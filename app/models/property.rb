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

  has_many :feedbacks

  def average_rating
    average = feedbacks.average(:rating) || 0
    average.round(1)
  end
end
