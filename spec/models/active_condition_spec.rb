require 'spec_helper'

RSpec.describe ActiveCondition, :type => :model do
  it { is_expected.to belong_to :conditionable }
  it { is_expected.to belong_to :condition }
end
