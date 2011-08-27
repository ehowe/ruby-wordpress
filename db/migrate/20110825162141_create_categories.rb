class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.integer :id
      t.string :category_name, :limit => 255
      t.timestamps
    end

    add_index :categories, :category_name, :name => 'category_name'
  end

  def self.down
    remove_index :categories, :name => :category_name
    drop_table :categories
  end
end
