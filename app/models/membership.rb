class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :team

  enum status: [:pending, :accepted, :archived]
end
