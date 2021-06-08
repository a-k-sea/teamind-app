class CreateTeamController < ApplicationController
  include Wicked::Wizard

  steps :new, :questionnaire, :confirm

  def show
    case step
    when :new
      @team = Team.new
    end
    render_wizard
  end
end
