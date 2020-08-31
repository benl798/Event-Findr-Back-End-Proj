class User < ApplicationRecord
<<<<<<< HEAD
    has_many :posts # one-to-many

    has_and_belongs_to_many :liked_posts, class_name: 'Post' # many-to-many for 'like/fave'

    has_many :comments # one-to-many

>>>>>>> a97e3a62916a85ee0779247ba67d9c3c6b1b36f7

    has_secure_password
    validates :name, length: { minimum: 2 }
end
