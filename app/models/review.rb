class Review < ApplicationRecord
  belongs_to :product
  belongs_to :customer

  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :text, allow_blank: true
end

