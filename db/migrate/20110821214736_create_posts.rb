class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :id, :limit => 20, :primary_key => true
      t.integer :post_author, :limit => 20, :default => 0
      t.datetime :post_date
      t.datetime :post_date_gmt
      t.text :post_content
      t.text :post_title
      t.text :post_excerpt
      t.string :post_status, :limit => 20, :default => 'publish'
      t.string :comment_status, :limit => 20, :default => 'open'
      t.string :ping_status, :limit => 20, :default => 'open'
      t.string :post_password, :limit => 20
      t.string :post_name, :limit => 200
      t.text :to_ping
      t.text :pinged
      t.datetime :post_modified
      t.datetime :post_modified_gmt
      t.text :post_content_filtered
      t.integer :post_parent, :limit => 20, :default => 0
      t.string :guid, :limit => 255
      t.integer :menu_order, :limit => 11, :default => 0
      t.string :post_type, :limit => 20, :default => 'post'
      t.string :post_mime_type, :limit => 100
      t.integer :comment_count, :limit => 20, :default => 0

      t.timestamps
    end

    add_index :posts, :post_name, :name => 'post_name'
    add_index :posts, [:post_type, :post_status, :post_date, :id], :name => 'type_status_date'
    add_index :posts, :post_parent, :name => 'post_parent'
    add_index :posts, :post_author, :name => 'post_author'
  end

  def self.down
    remove_index :posts, :name => :post_name
    remove_index :posts, :name => :type_status_date
    remove_index :posts, :name => :post_parent
    remove_index :posts, :name => :post_author
    drop_table :posts
  end
end
