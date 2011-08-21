class CreateRwUsers < ActiveRecord::Migration
  def self.up
    create_table :rw_users do |t|
      t.integer :id, :primary_key => true, :limit => 20, :default => nil
      t.string :user_login, :limit => 60
      t.string :user_pass, :limit => 64
      t.string :user_nicename, :limit => 50
      t.string :user_email, :limit => 100
      t.string :user_url, :limit => 100
      t.datetime :user_registered
      t.string :user_activation_key, :limit => 60
      t.integer :user_status, :limit => 11, :default => 0
      t.string :display_name, :limit => 250

      t.timestamps
    end

    add_index :rw_users, :user_login, :name => 'user_login_key'
    add_index :rw_users, :user_nicename, :name => 'user_nicename'
  end

  def self.down
    remove_index :rw_users, :name => :user_login_key
    remove_index :rw_users, :name => :user_nicename
    drop_table :rw_users
  end
end
