class Review < ApplicationRecord
  belongs_to :product
  belongs_to :customer

  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
 # No validation for `text`, making it optional
  v#alidates :text, allow_blank: true
end

