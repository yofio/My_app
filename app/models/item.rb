class Item < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :img, ImgUploader
  has_many :favorites, dependent: :destroy
  has_many :categories

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
