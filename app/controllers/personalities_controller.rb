class PersonalitiesController < ApplicationController
  def index
    questions = policy_scope(Question)

    @personality_questions = questions.where("custom = false")
  end

  def create
    personality_abbreviation = params[:user_answers].values.map do |answer_id|
      Answer.find(answer_id).letter
    end.join

    personality = Personality.find_by(abbreviation: personality_abbreviation)
    authorize personality
    current_user.personality = personality

    current_user.save

    redirect_to personality_path
  end

  def show
    if current_user.personality
      @personality = current_user&.personality
      authorize @personality
    else
      @personality = nil
      skip_authorization
    end
  end
end
