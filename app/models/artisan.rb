class Artisan < ApplicationRecord
  has_many :products, dependent: :destroy

  has_secure_password

  validates :email, presence: true, uniqueness: true
end

