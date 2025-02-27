@lib-02
Feature: Logout from the application

    As a user, I should be able to logout from the app.

    Background:
        Given user is already on the login page
    @lib-02-01
    #TODO: verify users can logout from the app
    Scenario Outline: Verify user can log out from the homepage
        Given user is already logged in as "<user-type>"
        When user clicks the user profile on the top right corner of the page
        And user clicks the logout button
        Then user should be logged out from the app

        Examples:
            | user-type |
            | admin     |
            | student   |




#* AC1: user should log out from the homepage by clicking the “Log out”  button under the account name.

