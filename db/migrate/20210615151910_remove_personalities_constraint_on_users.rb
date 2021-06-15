class RemovePersonalitiesConstraintOnUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :personality_id, :bigint, null: true
  end
end
