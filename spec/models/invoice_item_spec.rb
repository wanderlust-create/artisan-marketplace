require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:customer) }
    it { is_expected.to have_many(:invoice_items).dependent(:destroy) }
    it { is_expected.to have_many(:products).through(:invoice_items) }
    it { is_expected.to have_many(:transactions).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to define_enum_for(:status).with_values(%i[pending shipped completed canceled]) }
  end
end
