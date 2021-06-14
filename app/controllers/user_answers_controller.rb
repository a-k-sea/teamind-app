class UserAnswersController < ApplicationController
  def create
    @team = Team.find(params[:team].keys.first)
    authorize @team
    @questions = policy_scope(@team.questions)
    user = current_user

    if params[:user_answers].values.count("") == 0
      # find existing answers and destroy existing records
      existing_user_answers = UserAnswer.where("team_id = ? AND user_id = ?", @team.id, user.id)

      existing_user_answers.each do |user_answer|
        user_answer.destroy
      end

      params[:user_answers].values.each do |answer_id|
        answer = Answer.find(answer_id)
        user_answer = UserAnswer.new(team: @team, user: user, answer: answer)
        user_answer.save
      end

      membership = Membership.find_by(user: user, team: @team)
      membership.status = 1
      membership.save

      redirect_to teams_path
    else
      # render 'teams/questions'
      render 'questions/index'
      redirect_to teams_

    end
  end
end

  # Questions:
  # 1. submit never works on first try
  # 2. Path/URL is changing when the page is rendering
  # 3. how do we pre-fill the already answered questions
