require 'spec_helper'

RSpec.describe Feat, :type => :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of :name }

  context "a new feat" do
    it "defaults to the General feat type" do
      feat = Feat.create!(name: "Test Feat")
      expect(feat.feat_type.general?).to be_truthy
    end
  end
end
