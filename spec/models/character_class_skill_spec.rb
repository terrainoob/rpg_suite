require 'spec_helper'

RSpec.describe CharacterClassSkill, :type => :model do
  it { is_expected.to belong_to :skill }
  it { is_expected.to belong_to :character_class }
end
