class Post < ApplicationRecord
  belongs_to :user
  belongs_to :author
  belongs_to :author, class_name: 'User'
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
end
