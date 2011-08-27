class CreateOptions < ActiveRecord::Migration
  def self.up
    create_table :options do |t|
      t.integer :option_id, :limit => 20, :primary_key => true
      t.integer :blog_id, :limit => 11, :primary_key => true, :default => 0
      t.string :option_name, :limit => 64, :primary_key => true
      t.text :option_value
      t.string :autoload, :limit => 20, :default => 'yes'

      t.timestamps
    end

    add_index :options, :option_name, :name => 'option_name', :unique => true
  end

  def self.down
    remove_index :options, :name => :option_name
    drop_table :options
  end
end
