Feature: Admin functionality

This feature will verify the admin specific functionality

Admin login information: admin / sandbox

Admin options in the menu:
	- Front page settings
	- Site administration


Scenario: Admin menu options available for admin users
	When I am logged in as an admin
	Then I should see admin options in the left menu

Scenario: Admin menu not available for students users
	When I am logged in as a student
	Then I should not see admin options in the left menu
