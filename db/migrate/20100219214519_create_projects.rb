class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :category_id
      t.integer :order_num, :default => 0
      t.string :title
      t.string :url
      t.string :client
      t.string :thumbnail_file_name
      t.string :thumbnail_content_type
      t.integer :thumbnail_file_size
      t.datetime :thumbnail_created_at
      t.datetime :thumbnail_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
