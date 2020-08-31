class User < ApplicationRecord
    has_many :posts # one-to-many

    has_and_belongs_to_many :liked_posts, class_name: 'Post' # many-to-many for 'like/fave'

    has_many :comments # one-to-many

    has_secure_password
    validates :name, length: { minimum: 2 }
end
