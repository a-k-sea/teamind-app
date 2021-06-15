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
    @membership.destroy
    redirect_to teams_path, notice: "You successfully deleted this team 🗑🚮"
  end

  
end
