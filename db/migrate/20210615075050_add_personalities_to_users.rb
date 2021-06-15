class AddPersonalitiesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :personality, null: false, default: 17
    add_foreign_key :users, :personalities
  end
end
