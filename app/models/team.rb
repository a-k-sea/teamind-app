class Team < ApplicationRecord
  has_many :team_questions
  has_many :questions, through: :team_questions
  has_many :memberships
  has_many :users, through: :memberships

  validates :name, presence: true
end
