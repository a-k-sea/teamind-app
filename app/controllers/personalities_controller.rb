class PersonalitiesController < ApplicationController
  def index
    questions = policy_scope(Question)

    @personality_questions = questions.where("custom = false")
  end

  def create
    personality_abbreviation = params[:user_answers].values.map do |answer_id|
      Answer.find(answer_id).letter
    end.join

    current_user.personality = Personality.find_by(abbreviation: personality_abbreviation)
    current_user.save

  end
end
