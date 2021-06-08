class TeamsController < ApplicationController
  # Use 'authorize @team' to authorize a team and solve Pundit error

  def index
    raise
  end

  def new
    @team = Team.new
  end
end
