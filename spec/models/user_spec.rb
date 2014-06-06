require 'spec_helper'

RSpec.describe User, :type => :model do
  it { is_expected.to have_many :characters }
  it { is_expected.to have_many :races }

end