class Comment < ActiveRecord::Base
  set_primary_key :comment_id
  belongs_to :post
end
