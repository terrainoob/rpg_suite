require 'spec_helper'

RSpec.describe Condition, :type => :model do
  it { is_expected.to have_many :active_conditions }
end
