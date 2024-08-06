@lib-09
Feature: Main Modules of the Application

    As an admin, I want to access the main modules of the app.


    Background:
        Given user is already on the login page
        And user is already logged in as "admin"


    # TODO: Verify admins can see 3 main modules (Dashboard, Users, and Books)
    Scenario: Verify admins can see 3 main modules (Dashboard, Users, and Books)
        When user is on the homepage
        Then user should see the "Dashboard" module
        And user should see the "Users" module
        And user should see the "Books" module

#* AC: Admin users should see 3 modules: Dashboard, Users, Books


