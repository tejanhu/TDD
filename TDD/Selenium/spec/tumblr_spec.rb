  require 'spec_helper'

  describe "Navigate to the tumblr website" do
    it "should navigate to the tumblr website and login" do
      driver = Selenium::WebDriver.for :firefox
      driver.get "http://tumblr.com/login"

      wait = Selenium::WebDriver::Wait.new(timeout: 10)

      username_field = driver.find_element id: "signup_determine_email"
      username_field.send_keys "tejanahmedhu@gmail.com"

      # click the next button
      next_btn = driver.find_element id: "signup_forms_submit"
      next_btn.click

      # wait for the password field to be present
      wait.until { driver.find_element(:id => "signup_password").displayed? }

      password_field = driver.find_element :id => "signup_password"
      password_field.send_keys "123456pass"

      # click the log in button
      login_btn = driver.find_element id: "signup_forms_submit"
      login_btn.click


      puts "Page title is #{driver.title}"
      driver.quit

    end
  end
