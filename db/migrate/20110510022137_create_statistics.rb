class CreateStatistics < ActiveRecord::Migration
  def self.up
    create_table :statistics do |t|
      t.integer :character_id
      t.integer :strength
      t.integer :charisma

      t.timestamps
    end
  end

  def self.down
    drop_table :statistics
  end
end
