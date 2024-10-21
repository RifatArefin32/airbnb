class Property < ApplicationRecord
  validates :name, presence: :true
  validates :headline, presence: :true
  validates :description, presence: :true
  validates :address_1, presence: :true
  validates :city, presence: :true
  validates :state, presence: :true
  validates :country, presence: :true
  validates :price, presence: :true

  has_many_attached :images

  has_many :feedbacks, dependent: :destroy

  has_many :wishlists, dependent: :destroy
  has_many :wishlisted_users, through: :wishlist, source: :user, dependent: :destroy

  has_many :reservations, dependents: :destroy
  has_many :reserved_users, through: :reservations, source: :user, dependent: :destroy

  
  def average_rating
    average = feedbacks.average(:rating) || 0
    average.round(1)
  end
end
