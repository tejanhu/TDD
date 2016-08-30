  require 'rspec'
  require 'spec_helper'
  require 'selenium-webdriver'

  require './application'

  RSpec.configure do |config|
    config.color = true
    config.tty = true
    config.formatter = :documentation
  end
