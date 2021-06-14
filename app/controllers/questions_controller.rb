class QuestionsController < ApplicationController

  def index
    @team = Team.find(params[:team_id])
    @questions = policy_scope(@team.questions)
  end
end
