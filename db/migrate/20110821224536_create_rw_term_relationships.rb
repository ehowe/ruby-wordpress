class CreateRwTermRelationships < ActiveRecord::Migration
  def self.up
    create_table :rw_term_relationships do |t|
      t.integer :object_id, :primary_key => true, :limit => 20, :default => 0
      t.integer :term_taxonomy_id, :primary_key => true, :limit => 20, :default => 0
      t.integer :term_order, :limit => 11, :default => 0

      t.timestamps
    end

    add_index :rw_term_relationships, :term_taxonomy_id, :name => 'term_taxonomy_id'
  end

  def self.down
    remove_index :rw_term_relationships, :name => :term_taxonomy_id
    drop_table :rw_term_relationships
  end
end
