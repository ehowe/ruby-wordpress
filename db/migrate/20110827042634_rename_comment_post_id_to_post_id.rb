class RenameCommentPostIdToPostId < ActiveRecord::Migration
  def self.up
    rename_column(:comments, :comment_post_id, :post_id)
  end

  def self.down
    rename_column(:comments, :post_id, :comment_post_id)
  end
end
