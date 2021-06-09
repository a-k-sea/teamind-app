class CreateTeamController < ApplicationController
  include Wicked::Wizard

  steps :new, :questionnaire, :confirm

  def show
    questions = policy_scope(Question)

    case step
    when :new
      @team = Team.new
    when :questionnaire
      @questions = questions
      @categories = @questions.map(&:category).uniq
    end
    render_wizard
  end

  def update
    case step
    when :new
      session[:create_team] = {
        team: params[:team]
      }
    redirect_to wizard_path(@next_step)
    when :questionnaire
      session[:create_team][:questions] = params[:question_ids]
    redirect_to wizard_path(@next_step)
    end
  end
end
