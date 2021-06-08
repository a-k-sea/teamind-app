class Question < ApplicationRecord
  has_many :answers

  CATEGORIES = ['Working hours', 'Communication', 'Hobbies', 'Feedback', 'Other']
  validates :content, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
