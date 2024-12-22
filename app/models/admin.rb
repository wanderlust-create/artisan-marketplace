class Admin < ApplicationRecord
  has_secure_password
  has_many :artisans, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end

