class RenameAuthorIdToUserId < ActiveRecord::Migration
  def self.up
    rename_column(:posts, :post_author, :user_id)
  end

  def self.down
    rename_column(:posts, :user_id, :post_author)
  end
end
