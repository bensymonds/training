class AddNoteToActivities < ActiveRecord::Migration
  def self.up
    add_column :activities, :note, :string
  end

  def self.down
    remove_column :activities, :note
  end
end
