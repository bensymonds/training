class AddTimeToRepeatActivities < ActiveRecord::Migration
  def self.up
    add_column :repeat_activities, :duration, :integer
    change_column :repeat_activities, :distance, :decimal, :precision => 5, :scale => 2, :null => true
  end

  def self.down
    change_column :repeat_activities, :distance, :decimal, :precision => 5, :scale => 2, :null => false
    remove_column :repeat_activities, :duration
  end
end
