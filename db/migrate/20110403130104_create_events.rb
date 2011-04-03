class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.timestamps
      t.date :date, :null => false
      t.string :description, :null => false
    end
  end

  def self.down
    drop_table :events
  end
end
