class TeamsController < ApplicationController
  # Use 'authorize @team' to authorize a team and solve Pundit error

  def index
    @teams = policy_scope(Team)

    @teams_open = @teams.where("memberships.status = 0 OR memberships.status = 2")

    @teams_admin = @teams.where("memberships.owner = true")

    @teams_member = @teams.where("memberships.status = 1 AND memberships.owner = false")
  end

  # Wicked wizard
  # include Wicked::Wizard

  def status
    @team = Team.find(params[:id])
    authorize @team
  end

  def show
    @team = Team.find(params[:id])
    authorize @team
  end

end
