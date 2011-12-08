class CreateSignatures < ActiveRecord::Migration
  def self.up
    create_table :signatures do |t|
      t.integer :petition_id	
      t.integer :signer_id	
      t.timestamps
    end
  end

  def self.down
    drop_table :signatures
  end
end
