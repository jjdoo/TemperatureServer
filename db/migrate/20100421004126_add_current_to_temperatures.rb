class AddCurrentToTemperatures < ActiveRecord::Migration
  def self.up
    add_column :temperatures, :current, :boolean, :default => false
  end

  def self.down
    remove_column :temperatures, :current
  end
end
