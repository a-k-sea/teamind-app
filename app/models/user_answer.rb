class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user
  belongs_to :team

  validates :answer, presence: true
  validates :user, presence: true
  validates :team, presence: true
end
