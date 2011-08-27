class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :link_id, :primary_key => true
      t.string :link_url, :limit => 255
      t.string :link_name, :limit => 255
      t.string :link_image, :limit => 255
      t.string :link_target, :limit => 25
      t.string :link_description, :limit => 255
      t.string :link_visible, :limit => 20, :default => 'Y'
      t.integer :link_owner, :limit => 20, :default => 1
      t.integer :link_rating, :limit => 11, :default => 0
      t.datetime :link_updated
      t.string :link_rel, :limit => 255
      t.text :link_notes
      t.string :link_rss, :limit => 255

      t.timestamps
    end

    add_index :links, :link_visible, :name => 'link_visible'
  end

  def self.down
    remove_index :links, :name => :link_category
    remove_index :links, :name => :link_visible
    drop_table :links
  end
end
