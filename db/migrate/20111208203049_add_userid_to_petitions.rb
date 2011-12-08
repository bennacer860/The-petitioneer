class AddUseridToPetitions < ActiveRecord::Migration
  def self.up
    add_column :petitions, :user_id, :integer
  end

  def self.down
    remove_column :petitions, :user_id
  end
end
