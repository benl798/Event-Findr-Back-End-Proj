class User < ApplicationRecord
    has_many :posts # one-to-many

    has_and_belongs_to_many :liked_posts, class_name: 'Post' # many-to-many for 'like/fave'

    # has_and_belongs_to_many :disliked_posts, class_name: 'Post'

    has_many :comments # one-to-many

    has_secure_password
    validates :name, length: { minimum: 2 }
    validates :email, presence: true, uniqueness: true

    has_many :following_relationships, class_name: 'Follow', foreign_key: 'follower_id', dependent: :destroy
    has_many :followed_relationships,  class_name: 'Follow', foreign_key: 'followed_id', dependent: :destroy

    has_many :following, through: 'following_relationships', source: 'followed'
    has_many :followers, through: 'followed_relationships', source: 'follower'
end
