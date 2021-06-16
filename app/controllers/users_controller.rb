class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user

    @team = Team.find(params[:team_id])

    @user_answers = UserAnswer.where("user_id = ? AND team_id = ?", @user, @team)

    @categories = @team.questions.map(&:category).uniq
  end
end
