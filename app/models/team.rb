class Team < ApplicationRecord
  has_many :team_questions
  has_many :questions, through: :team_questions
  has_many :memberships
  has_many :users, through: :memberships
  has_one_attached :photo

  validates :name, presence: true, unless: :new_record?
  def owner
    memberships.find_by(owner: true)&.user
  end

  def invite(email)
    user = User.find_by_email(email)
    user = User.invite!(email: email, password: 'password', skip_invitation: true) unless user
    membership_member = Membership.new(user: user, team: self, owner: false)
    membership_member.save
  end

end

