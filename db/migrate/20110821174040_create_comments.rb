class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :comment_id, :primary_key => true, :limit => 20
      t.integer :comment_post_id, :limit => 20
      t.text :comment_author
      t.string :comment_author_email, :limit => 100
      t.string :comment_author_url, :limit => 200
      t.string :comment_author_ip, :limit => 100
      t.datetime :comment_date
      t.datetime :comment_date_gmt
      t.text :comment_content
      t.integer :comment_karma, :limit => 11
      t.string :comment_approved, :limit => 20
      t.string :comment_agent, :limit => 255
      t.string :comment_type, :limit => 20
      t.integer :comment_parent, :limit => 20
      t.integer :user_id, :limit => 20

      t.timestamps
    end

    add_index :comments, :comment_approved, :name => 'comment_approved'
    add_index :comments, :comment_post_id, :name => 'comment_post_id'
    add_index :comments, [:comment_approved, :comment_date_gmt], :name => 'comment_approved_date_gmt'
    add_index :comments, :comment_date_gmt, :name => 'comment_date_gmt'
    add_index :comments, :comment_parent, :name => 'comment_parent'
  end

  def self.down
    remove_index :comments, :name => :comment_approved
    remove_index :comments, :name => :comment_post_id
    remove_index :comments, :name => :comment_approved_date_gmt
    remove_index :comments, :name => :comment_date_gmt
    remove_index :comments, :name => :comment_parent
    drop_table :comments
  end
end
