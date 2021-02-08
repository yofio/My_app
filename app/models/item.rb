class Item < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :img, ImgUploader
  has_many :favorites, dependent: :destroy
  belongs_to :category

  validates :title, presence: true
  validates :item1, presence: true
  validates :item2, presence: true
  validates :body1, presence: true
  validates :feature1, presence: true
  validates :feature2, presence: true
  validates :feature3, presence: true
  validates :feature4, presence: true
  validates :feature5, presence: true
  validates :feature6, presence: true
  validates :rate1, presence: true
  validates :rate2, presence: true
  validates :rate3, presence: true
  validates :rate4, presence: true
  validates :rate5, presence: true
  validates :rate6, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true
  def self.micropost_serach(search)
    Item.where('item1 LIKE ? OR item2 LIKE ?', "%#{search}%", "%#{search}%")
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
