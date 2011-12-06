class CreatePetitions < ActiveRecord::Migration
  def self.up
    create_table :petitions do |t|
      t.string :letter
      t.string :about
      t.string :title
      t.integer :goal
      t.timestamps
    end
  end

  def self.down
    drop_table :petitions
  end
end
