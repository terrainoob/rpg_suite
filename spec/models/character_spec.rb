require 'spec_helper'

RSpec.describe Character, :type => :model do
  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :race }
  it { is_expected.to belong_to :character_class }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:user_id)}

  context "a new character" do
    let(:user) {build_stubbed(:confirmed_user)}
    let(:character) {Character.create(name: "John", user: user)}

    it "defaults to gender male" do
      expect(character.gender).to eq "male"
    end

    it "defaults to alignment neutral" do
      expect(character.alignment.neutral?).to be_truthy
    end
  end
end
