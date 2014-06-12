require 'spec_helper'

RSpec.describe Equipment, :type => :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of(:name)}
  it { is_expected.to have_many :active_conditions }
  it { is_expected.to have_many(:conditions).through(:active_conditions)}
end
