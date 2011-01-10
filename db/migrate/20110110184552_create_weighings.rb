class CreateWeighings < ActiveRecord::Migration
  def self.up
    create_table :weighings do |t|
      t.datetime :created_at
      t.decimal :weight, :precision => 3, :scale => 1
    end
  end

  def self.down
    drop_table :weighings
  end
end
