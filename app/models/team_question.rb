class TeamQuestion < ApplicationRecord
  belongs_to :team
  belongs_to :question
end
