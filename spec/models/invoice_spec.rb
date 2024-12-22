require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'associations' do
    it { should belong_to(:customer) }
    it { should have_many(:invoice_items).dependent(:destroy) }
    it { should have_many(:products).through(:invoice_items) }
    it { should have_many(:transactions).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:status) }
    it { should define_enum_for(:status).with_values(%i[pending shipped completed canceled]) }
  end
end

