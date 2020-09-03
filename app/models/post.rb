class Post < ApplicationRecord



  has_and_belongs_to_many :liked_by_users, class_name: 'User'

  # has_and_belongs_to_many :disliked_by_users, class_name: 'User'

  belongs_to :user, optional: true # many-to-many for 'like/fave'

  has_many :comments
  has_many :votes, class_name: 'Like'

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode


  def liked_by
    votes.where(status: 'like').includes(:user).map(&:user)
  end

  def disliked_by
    votes.where(status: 'dislike').includes(:user).map(&:user)
  end
end
