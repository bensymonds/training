class CreateWeights < ActiveRecord::Migration
  def self.up
    create_table :weights do |t|
      t.datetime :created_at
      t.decimal :precision => 3, :scale => 1
    end
  end

  def self.down
    drop_table :weights
  end
end
