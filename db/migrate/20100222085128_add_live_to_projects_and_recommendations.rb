class AddLiveToProjectsAndRecommendations < ActiveRecord::Migration
  def self.up
    add_column :projects, :live, :boolean, :default => 1
    add_column :recommendations, :live, :boolean, :default => 1
  end

  def self.down
    remove_column :projects, :live
    remove_column :recommendations, :live
  end
end
