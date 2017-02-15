Given(/^I enter into the school site$/) do
  @browser.goto "http://school.demo.moodle.net/"
end

When(/^I click in Log in link$/) do
  @browser.link(:href =>'http://school.demo.moodle.net/login/index.php').click
end

When(/^I enter the "([^"]*)" in the username Field$/) do |username|
  @browser.text_field(:id=> 'username').set(username)
end

When(/^I enter the "([^"]*)" in the password Field$/) do |password|
  @browser.text_field(:id=> 'password').set(password)
end

When(/^I click on login button$/) do
  @browser.button(:id => 'loginbtn').click
end

Then(/^"([^"]*)" are displayed$/) do |results|
  @browser.text.include?(results).should == true
end

When(/^I clcik on Log in as guest button$/) do
  @browser.button(:type => 'submit').click
end

Then(/^guest access page will be displayed$/) do
    @browser.text.include?('About Mount Orange').should == true
end
