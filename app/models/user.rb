class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 4 }, on: :create
  has_secure_password
  
  has_many :posts
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverses_of_relationship, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverses_of_relationship, source: :user
  has_many :comments
  has_many :favorites
  has_many :favoritings, through: :favorites, source: :post
  
  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end
  
  def feed_posts
    Micropost.where(user_id: self.following_ids + [self.id])
  end
  
   def favorite(like_post)
    self.favorites.find_or_create_by(post_id: like_post.id)
   end
   
   def unfavorite(like_post)
    favorite = self.favorites.find_by(post_id: like_post.id)
    favorite.destroy if favorite
   end
   
   def favoriting?(posts)
    self.favoritings.include?(posts)
   end
   
end
