class CreatePersonalities < ActiveRecord::Migration[6.0]
  def change
    create_table :personalities do |t|
      t.string :abbreviation
      t.text :description
      t.text :matches, array: true, default: []

      t.timestamps
    end
  end
end
