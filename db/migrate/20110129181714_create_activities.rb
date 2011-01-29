class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.datetime :created_at
      t.date :date
      t.time :time, :default => nil
      t.references :repeat_activity, :default => nil
      t.string :sport, :default => nil
      t.decimal :distance, :precision => 5, :scale => 2, :default => nil
    end
    add_foreign_key(:activities, :repeat_activities)
  end

  def self.down
    drop_table :activities
  end
end
