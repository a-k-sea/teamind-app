class CreateTeamController < ApplicationController
  include Wicked::Wizard

  steps :new, :questionnaire, :confirm

  def show
    session[:create_team] = session[:create_team] || {}
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
      session[:create_team]["questions"] = params[:question_ids]
    redirect_to wizard_path(@next_step)
    end
  end

  def create
    # Create a new team
    team = Team.new(session[:create_team]["team"])
    team.save

    # Add team membership for owner
    membership_owner = Membership.new(user: current_user, team: team, owner: true)
    membership_owner.save

    # Add team memberships for team members (invitees)
    session[:create_team]["team"]["email"].split(",").each do |email| # might add semicolons, dashes etc.
      user = User.find_by_email(email.strip)
      membership_member = Membership.new(user: user, team: team, owner: false)
      membership_member.save
    end

    # Set up team_questions
    session[:create_team]["questions"].each do |question_id|
      question = Question.find(question_id)
      team_question = TeamQuestion.new(question: question, team: team)
      team_question.save
    end

    redirect_to teams_path
  end
end
