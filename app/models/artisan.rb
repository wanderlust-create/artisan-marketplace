class Artisan < ApplicationRecord
  belongs_to :admin, optional: true

  has_many :products, dependent: :destroy
  has_secure_password

  validates :store_name, presence: true
  validates :email, presence: true, uniqueness: true
end


