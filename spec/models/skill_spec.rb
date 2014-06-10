require 'spec_helper'

RSpec.describe Skill, :type => :model do
  it { is_expected.to have_many(:character_classes).through(:character_class_skills) }
  it { is_expected.to have_many(:characters).through(:character_skills) }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of(:name)}
end
