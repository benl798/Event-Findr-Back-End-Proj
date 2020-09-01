class Post < ApplicationRecord
  has_and_belongs_to_many :liked_by_users, class_name: 'User'

  # has_and_belongs_to_many :disliked_by_users, class_name: 'User'

  belongs_to :user, optional: true # many-to-many for 'like/fave'

  has_many :comments
end
