class AddPersonalitiesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :personality, null: false
    add_foreign_key :users, :personalities
  end
end
