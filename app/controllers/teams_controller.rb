class TeamsController < ApplicationController
  # Use 'authorize @team' to authorize a team and solve Pundit error


  def index
    raise
  end

  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(team_params)
    authorize @team
    if @team.save
      redirect_to create_team_path(:questionnaire)
    else
      render "create_team/create_team"
    end
  end

  # Wicked wizard
  # include Wicked::Wizard
  
  private
  
  def team_params
    params.require(:team).permit(:name, :description)
  end
  
end
