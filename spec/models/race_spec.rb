require 'spec_helper'

RSpec.describe Race, :type => :model do
  it { is_expected.to belong_to :user }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:user_id)}

  it "does not have to belong to a user" do
    race = Race.create(name: "Dwarf")
    expect(race).to be_valid
    expect(race.user).to be_nil
  end
end
