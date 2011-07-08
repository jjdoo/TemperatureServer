class AddMarkToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :avg_mark, :decimal,:precision => 10, :scale => 8, :default => 0
    add_column :articles, :mark_times, :integer, :default => 0
    add_column :articles, :lock_version, :integer, :default => 0
  end

  def self.down
    remove_column :articles, :avg_mark
    remove_column :articles, :mark_times
    remove_column :articles, :lock_version
  end
end
