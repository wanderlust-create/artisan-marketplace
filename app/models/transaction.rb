class Transaction < ApplicationRecord
  belongs_to :invoice

  enum status: { failed: 0, successful: 1 }

  validates :credit_card_number, presence: true, format: { with: /\A\d{13,19}\z/, message: "must be a valid credit card number" }
  validates :credit_card_expiration_date, presence: true, format: { with: /\A(0[1-9]|1[0-2])\/(\d{2}|\d{4})\z/, message: "must be in MM/YY or MM/YYYY format" }
  validate :expiration_date_cannot_be_in_the_past

  private

  def expiration_date_cannot_be_in_the_past
    if credit_card_expiration_date.present?
      parsed_date = Date.strptime(credit_card_expiration_date, '%m/%y') rescue nil
      if parsed_date && parsed_date < Date.today
        errors.add(:credit_card_expiration_date, "cannot be in the past")
      end
    end
  end
end

