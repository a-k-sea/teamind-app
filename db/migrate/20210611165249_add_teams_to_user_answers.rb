class AddTeamsToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_answers, :team, null: false, foreign_key: true
  end
end
