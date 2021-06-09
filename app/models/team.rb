class Team < ApplicationRecord
  has_many :team_questions
  has_many :questions, through: :team_questions
  has_many :memberships
  has_many :users, through: :memberships
  has_one_attached :photo

  validates :name, presence: true
end
