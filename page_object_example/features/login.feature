Feature: Login functionality

	This feature will verify the login functionality

Scenario: Login error message
	When I try to login with an invalid user
	Then I should see the following message: "Invalid login, please try again"