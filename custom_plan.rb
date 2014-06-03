require 'zeus/rails'

class CustomPlan < Zeus::Rails

  def spec(argv=ARGV)
    # disable autorun in case the user left it in spec_helper.rb
    RSpec::Core::Runner.disable_autorun!
    exit RSpec::Core::Runner.run(argv)

    require 'simplecov'
    require 'simplecov-rcov-text'
    SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::RcovTextFormatter
    ]
    SimpleCov.start  'rails'
    Dir["#{Rails.root}/app/**/*.rb"].each { |f| load f }
    super
  end

end

Zeus.plan = CustomPlan.new
