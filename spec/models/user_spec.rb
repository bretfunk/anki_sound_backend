require 'rails_helper'

RSpec.describe User, type: :model do
  context "valid attributes" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }

    it "has valid attributes" do
      user = create(:user)
      expect(user.email).to eq('elon@spacex.com')
      expect(user.password_digest).to eq('AIwillkillusall')
    end
  end
  context "associations" do
    it { should have_many(:phrases) }

    it "has valid assocations" do
      user = create(:user)
      create_list(:phrase, 3, user_id: user.id)

      expect(user.phrases.count).to eq(3)
      expect(user.phrases.first.phrase).to eq('I love you')
      expect(user.phrases.first.language).to eq('English')
    end
  end
end
