class CreateRwUsermeta < ActiveRecord::Migration
  def self.up
    create_table :rw_usermeta do |t|
      t.integer :umeta_id, :primary_key => true, :limit => 20, :default => nil
      t.integer :user_id, :limit => 20, :default => 0
      t.string :meta_key, :limit => 255, :default => nil
      t.text :meta_value, :default => nil

      t.timestamps
    end

    add_index :rw_usermeta, :user_id, :name => 'user_id'
    add_index :rw_usermeta, :meta_key, :name => 'meta_key_usermeta'
  end

  def self.down
    remove_index :rw_usermeta, :name => :user_id
    remove_index :rw_usermeta, :name => :meta_key_usermeta
    drop_table :rw_usermeta
  end
end
