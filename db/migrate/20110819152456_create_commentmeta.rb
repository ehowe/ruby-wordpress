class CreateCommentmeta < ActiveRecord::Migration
  def self.up
    create_table :commentmeta do |t|
      t.integer :meta_id, :primary_key => true, :null => true
      t.integer :comment_id, :null => false, :default => 0
      t.string :meta_key, :limit => 255
      t.text :meta_value

      t.timestamps
    end

    add_index :commentmeta, :comment_id, :name => 'comment_id'
    add_index :commentmeta, :meta_key, :name => 'meta_key'
  end

  def self.down
    remove_index :commentmeta, :name => :comment_id
    remove_index :commentmeta, :name => :meta_key
    drop_table :commentmeta
  end
end
