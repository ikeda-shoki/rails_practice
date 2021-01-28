class PostImage < ApplicationRecord
  
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  
  validates :shop_name, presence: true
  validates :image, presence: true
  
  def favorites_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
