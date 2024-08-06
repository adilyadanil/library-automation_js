@lib-05
Feature: Main modules of the application

    As a user, I want to access to the main modules of the app.

    Background:
        Given user is already on the login page
        And user is already logged in as "student"

    # TODO: Verify students can see 2 main modules (Books and Borrowing Books)
    Scenario: Verify students can see Books and Borrowing Books modules
        When user is on the homepage
        Then user should see the "Books" module
        And user should see the "Borrowing Books" module

    Scenario: Verify students can navigate to the Books module
        When user is on the homepage
        And user clicks on the "Books" module
        Then user should be navigated to the Books page

    Scenario: Verify students can navigate to the Borrowing Books module
        When user is on the homepage
        And user clicks on the "Borrowing Books" module
        Then user should be navigated to the Borrowing Books page

#* AC: students should see 2 modules: Books, Borrowing Books
#* AC2: Navigation to Books Module (added)
#* AC3: Navigation to Borrowing Books Modules (added)





