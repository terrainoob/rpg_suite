require 'rubygems'
require 'action_mailer'
require 'email_spec'

prefork = lambda {
  def zeus_running?
    File.exists? '.zeus.sock'
  end
  if !zeus_running?
    #####################
    #SimpleCov setup
    #####################
    require 'simplecov'
    require 'simplecov-rcov-text'
    SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::RcovTextFormatter
    ]
    SimpleCov.start 'rails'
  end


  ENV["RAILS_ENV"] = 'test'

  #####################
  #Standard Requires
  #####################
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'capybara/rspec'
  require 'capybara/rails'
  require 'webmock/rspec'
  require 'capybara/poltergeist'
  require 'shoulda-matchers'
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  #Dir[Rails.root.join("spec/shared_examples/**/*.rb")].each {|f| require f}

  Capybara.javascript_driver = :poltergeist
  WebMock.disable_net_connect!(allow_localhost: true)

  #####################
  #Rspec config
  #####################
  RSpec.configure do |config|
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr

    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = true
    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"
    config.infer_spec_type_from_file_location!
    config.filter_run focus: true
    config.run_all_when_everything_filtered = true
    config.include Devise::TestHelpers, type: :controller
    config.include(EmailSpec::Helpers)
    config.include(EmailSpec::Matchers)
    config.include FactoryGirl::Syntax::Methods

    config.before(:each) do
      WebMock.reset!
    end

    config.after(:suite) do
      ActiveRecord::Base.connection.execute("DEALLOCATE ALL")
    end
  end

  #####################
  #Monkey patch for shared connections
  #####################
  class ActiveRecord::Base
    mattr_accessor :shared_connection
    @@shared_connection = nil

    def self.connection
      @@shared_connection || retrieve_connection
    end
  end
}

each_run = lambda {
  ActiveRecord::Migration.maintain_test_schema!
  ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection
  FactoryGirl.reload
}

if defined?(Zeus)
  prefork.call
  $each_run = each_run
  class << Zeus.plan
    def after_fork_with_test
      after_fork_without_test
      $each_run.call
    end
    alias_method_chain :after_fork, :test
  end
else
  prefork.call
  each_run.call
end
