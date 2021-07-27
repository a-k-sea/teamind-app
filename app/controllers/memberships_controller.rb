class MembershipsController < ApplicationController
  # Use 'authorize @membership' to authorize a membership and solve Pundit error

  def update
    membership = Membership.find(params[:id])
    authorize membership

    membership.status = 2 if params[:query] == "reject"

    membership.save

    redirect_to teams_path
  end

  def destroy
    @membership = Membership.find(params[:id])
    authorize @membership
    # Reassign ownership of team to someone with status either accepted or pending
    if @membership.owner?
      team = @membership.team
      new_owner = team.memberships.where("status != 2 AND owner = false").order(status: "desc").first
      if new_owner.nil?
        @membership.destroy
        team.team_questions.destroy_all
        team.destroy
      else
        new_owner.owner = true
        new_owner.save
      end
    end
    @membership.destroy
    redirect_to teams_path, notice: "You successfully deleted this team 🗑🚮"
  end

  def create
    @team = Team.find(params[:team_id])
    authorize @team
    # invite the user
    @team.invite(params[:membership][:user].strip)
    # redirect to status page
    redirect_to status_team_path(@team)
  end
  
end
