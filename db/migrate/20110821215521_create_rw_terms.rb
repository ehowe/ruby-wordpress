class CreateRwTerms < ActiveRecord::Migration
  def self.up
    create_table :rw_terms do |t|
      t.integer :term_id, :primary_key => true, :limit => 20
      t.string :name, :limit => 200
      t.string :slug, :limit => 200
      t.integer :term_group, :limit => 10, :default => 0

      t.timestamps
    end

    add_index :rw_terms, :slug, :name => 'slug'
    add_index :rw_terms, 'name', :name => 'name'
  end

  def self.down
    remove_index :rw_terms, :name => :slug
    remove_index :rw_terms, :name => 'name'
    drop_table :rw_terms
  end
end
