class User < ActiveRecord::Base
  set_primary_key :id
  has_many :posts
end
