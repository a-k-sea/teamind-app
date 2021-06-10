class CreateTeamController < ApplicationController
  include Wicked::Wizard

  steps :new, :questionnaire, :confirm

  def show
    questions = policy_scope(Question)

    case step
    when :new
      if session[:create_team]["team"]
        @team = Team.new(session[:create_team]["team"])
       else
         @team = Team.new
       end       
    when :questionnaire
      @questions = questions
      @categories = @questions.map(&:category).uniq
      @selected = session[:create_team]["questions"] || []
    end
    render_wizard
  end

  def update
    session[:create_team] = session[:create_team] || {}
    case step
    when :new
      session[:create_team][:team] = params[:team]
    redirect_to wizard_path(@next_step)
    when :questionnaire
      session[:create_team][:questions] = params[:question_ids]
    redirect_to wizard_path(@next_step)
    end
  end
end
