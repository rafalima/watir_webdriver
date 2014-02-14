When(/^I try to login with an invalid user$/) do
  visit HomePage do |home_page|
  	login_page = home_page.go_to_login
  	login_page.invalid_login  	
	end
end

Then(/^I should see the following message: (.+)$/) do |message|
	on LoginPage do |page|
		page.login_error_message.should.eql?(message)
	end
end