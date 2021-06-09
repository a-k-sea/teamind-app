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
    end
    render_wizard
  end
end
