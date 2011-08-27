class Post < ActiveRecord::Base
  set_primary_key :id
  has_and_belongs_to_many :categories
  belongs_to :user
  has_many :comments
end
