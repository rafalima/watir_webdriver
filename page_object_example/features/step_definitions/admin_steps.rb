Given(/^I am logged in as an admin$/) do  
   visit LoginPage do |page| 
  	page.login_as_admin
  end
end

Then(/^I should see admin options in the left menu$/) do
  on HomePage do |page|
  	page.admin?.should be_true
  end
end	

Given(/^I am logged in as a student$/) do
  visit LoginPage do |page|
  	page.login_as_student
  end
end

Then(/^I should not see admin options in the left menu$/) do
  on HomePage do |page|
  	page.admin?.should be_false
  end
end