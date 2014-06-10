require 'spec_helper'

RSpec.describe CharacterClass, :type => :model do
  it { is_expected.to have_many :characters }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of(:name)}

  it "default scope returns default classes and classes belonging to the campaign" do
    skip
  end
end
