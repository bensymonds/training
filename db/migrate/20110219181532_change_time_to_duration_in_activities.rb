class ChangeTimeToDurationInActivities < ActiveRecord::Migration
  def self.up
    remove_column :activities, :time
    add_column :activities, :duration, :integer
  end

  def self.down
    remove_column :activities, :duration
    add_column :activities, :time, :time
  end
end
