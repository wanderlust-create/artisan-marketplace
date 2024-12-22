require 'rails_helper'

RSpec.describe Artisan, type: :model do
  describe 'associations' do
    # TODO: Add this test back once the Product model and association are implemented
    pending 'is expected to have many products dependent => destroy' do
      it { should have_many(:products).dependent(:destroy) }
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:store_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should have_secure_password }
  end
end

