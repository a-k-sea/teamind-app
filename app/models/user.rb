class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships
  has_many :user_answers
  has_many :teams, through: :memberships

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
