class CreateTeamQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :team_questions do |t|
      t.references :team, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
