class Artisan < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  validates :store_name, presence: true
  validates :email, presence: true, uniqueness: true
end

