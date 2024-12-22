class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoice_items, dependent: :destroy
  has_many :products, through: :invoice_items

  validates :status, presence: true
end

