class CreateRwTermTaxonomies < ActiveRecord::Migration
  def self.up
    create_table :rw_term_taxonomies do |t|
      t.integer :term_taxonomy_id, :primary_key => true, :limit => 20
      t.integer :term_id, :limit => 20, :default => 0
      t.string :taxonomy, :limit => 32
      t.text :description
      t.integer :parent, :limit => 20, :default => 0
      t.integer :count, :limit => 20, :default => 0

      t.timestamps
    end

    add_index :rw_term_taxonomies, [:term_id, :taxonomy], :name => 'term_id_taxonomy', :unique => true
    add_index :rw_term_taxonomies, :taxonomy, :name => 'taxonomy'
  end

  def self.down
    remove_index :rw_term_taxonomies, :name => 'term_id_taxonomy'
    remove_index :rw_term_taxonomies, :name => 'taxonomy'
    drop_table :rw_term_taxonomies
  end
end
