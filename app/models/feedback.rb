class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :rating, presence: :true
  validates :review_text, presence: :true, comparison: { greater_than: 0, less_than_equal: 5 }
end
