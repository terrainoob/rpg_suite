require 'spec_helper'

describe 'validate factories', :type => :model do
  FactoryGirl.factories.each do |factory|
    context "with factory for :#{factory.name}" do
      subject { build(factory.name) }

      it "is valid" do
        is_valid = subject.valid?
        expect(is_valid).to be_truthy, subject.errors.full_messages.join(',')
      end
    end
  end
end