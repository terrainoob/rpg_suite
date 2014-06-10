require 'spec_helper'

RSpec.describe CharacterSkill, :type => :model do
  it { is_expected.to belong_to :skill }
  it { is_expected.to belong_to :character }
end
