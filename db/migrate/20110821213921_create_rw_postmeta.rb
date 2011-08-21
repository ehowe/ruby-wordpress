class CreateRwPostmeta < ActiveRecord::Migration
  def self.up
    create_table :rw_postmeta do |t|
      t.integer :meta_id, :limit => 20, :primary_key => true
      t.integer :post_id, :limit => 20, :default => 0
      t.string :meta_key, :limit => 255
      t.text :meta_value

      t.timestamps
    end

    add_index :rw_postmeta, :post_id, :name => 'post_id'
    add_index :rw_postmeta, :meta_key, :name => 'meta_key_postmeta'
  end

  def self.down
    remove_index :rw_postmeta, :name => :post_id
    remove_index :rw_postmeta, :name => :meta_key_postmeta
    drop_table :rw_postmeta
  end
end
