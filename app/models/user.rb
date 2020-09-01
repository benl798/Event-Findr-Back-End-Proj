class User < ApplicationRecord
    has_many :posts # one-to-many




    has_many :comments # one-to-many

    has_secure_password
    validates :name, length: { minimum: 2 }
    validates :email, presence: true, uniqueness: true

    has_many :following_relationships, class_name: 'Follow', foreign_key: 'follower_id', dependent: :destroy
    has_many :followed_relationships,  class_name: 'Follow', foreign_key: 'followed_id', dependent: :destroy

    has_many :following, through: 'following_relationships', source: 'followed'
    has_many :followers, through: 'followed_relationships', source: 'follower'

    has_many :votes, class_name: 'Like'

    def liked_posts
      votes.where(status: 'like').includes(:post).map(&:post)
    end

    def disliked_posts
      votes.where(status: 'dislike').includes(:post).map(&:post)
    end
end
