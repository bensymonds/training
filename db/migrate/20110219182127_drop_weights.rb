class DropWeights < ActiveRecord::Migration
  def self.up
    drop_table :weights
  end

  def self.down
    raise IrreversibleMigration
  end
end
