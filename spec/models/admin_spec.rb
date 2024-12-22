require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'validations' do
    subject { create(:admin) }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value('test@example.com').for(:email) }
    it { should_not allow_value('not-an-email').for(:email) }
  end

  describe 'secure password' do
    it { should have_secure_password }
  end
end


