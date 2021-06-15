class AddLetterToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :letter, :string, default: "X"
  end
end
