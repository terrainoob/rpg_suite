require 'spec_helper'

RSpec.describe CharacterFeat, :type => :model do
  it { is_expected.to belong_to :feat }
  it { is_expected.to belong_to :character }
end
