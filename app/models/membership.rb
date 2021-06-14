class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :team

  enum status: [:pending, :accepted, :rejected]

  # validate method (only when we want to update the status)
  # validate :questionnaire_completeness, on: :update

  # def questionnaire_completeness
  # end
  # def method
  #   if user has answered all questions
  #   else
  #     add error to membership (if record has errors attached to it, it cannot be saved)
  #     errors.add("You need to answer all questions")
  #   end
  # end

  # status cannot change to accepted, if not all questions are answered
  # validate
end
