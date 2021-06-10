class Question < ApplicationRecord
  has_many :answers

  CATEGORIES = ['Working hours', 'Work style', 'Communication', 'Hobbies', 'Feedback', 'Personality', 'Other']
  validates :content, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
