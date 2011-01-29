class CreateRepeatActivities < ActiveRecord::Migration
  def self.up
    create_table :repeat_activities do |t|
      t.timestamps
      t.string :sport, :null => false
      t.decimal :distance, :precision => 5, :scale => 2, :null => false
      t.string :name, :null => false
      t.string :description, :null => false
    end
  end

  def self.down
    drop_table :repeat_activities
  end
end
