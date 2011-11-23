class CreateLetters < ActiveRecord::Migration
  def self.up
    create_table :letters do |t|
      t.text :payload

      t.timestamps
    end
  end

  def self.down
    drop_table :letters
  end
end
