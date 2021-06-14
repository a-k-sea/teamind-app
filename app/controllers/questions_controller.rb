class QuestionsController < ApplicationController

  def index
    @team = Team.find(params[:team_id])
    @user_answer = UserAnswer.new
    @questions = policy_scope(@team.questions)
    # @teams = current_user.teams.any?

  end
end
