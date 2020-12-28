class Item < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :img, ImgUploader
  has_many :favorites, dependent: :destroy
  has_many :categories

  def self.micropost_serach(search)
    Item.where('item1 LIKE ? OR item2 LIKE ?', "%#{search}%", "%#{search}%")
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
