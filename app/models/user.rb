class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships
  has_many :user_answers
  has_many :teams, through: :memberships
  has_one_attached :photo
  belongs_to :personality

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  def valid_photo_url
    if photo.attached?
      photo.key
    else
    "default_avatar_cmk0wy.png"
    end
  end

end
