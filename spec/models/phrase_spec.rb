require 'rails_helper'

RSpec.describe Phrase, type: :model do
  context "valid attributes" do
    it { should validate_presence_of(:phrase) }
    it { should validate_presence_of(:language) }

    it "has valid attributes" do
      phrase = create(:phrase)
      expect(phrase.phrase).to eq('I love you')
      expect(phrase.language).to eq('English')
    end
  end
  context "associations" do
    it { should belong_to(:user) }

    it "has valid assocations" do
      user = create(:user)
      create_list(:phrase, 3, user_id: user.id)

      expect(user.phrases.count).to eq(3)
      expect(user.phrases.first.phrase).to eq('I love you')
      expect(user.phrases.first.language).to eq('English')
    end
  end
end

