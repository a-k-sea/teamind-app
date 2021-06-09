class AddEmailToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :email, :text
  end
end
