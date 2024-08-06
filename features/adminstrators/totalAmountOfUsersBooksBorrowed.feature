@lib-10
Feature: Total Amount of Users, Books, and Borrowed Books

    As an admin, I want to see the total amount of users, books, and borrowed books on the "Dashboard" page.

    Background:
        Given user is already on the login page
        And user is already logged in as "admin"

    @lib-10-01
    Scenario: Verify admins see the total numbers and texts for Users, Books, and Borrowed Books
        Then user should see three information cards on the Dashboard page
        And the first card should display the total number of users and the "Users" text
        And the second card should display the total number of books and the "Books" text
        And the third card should display the total number of borrowed books and the "Borrowed Books" text

    @lib-10-02
    Scenario: Verify the accuracy of displayed totals
        Then the total number of users displayed should match the actual number of users in the system
        And the total number of books displayed should match the actual number of books in the system
        And the total number of borrowed books displayed should match the actual number of borrowed books in the system

    @lib-10-03
    Scenario: Verify totals update after adding a new user
        When a new user is added to the system
        And user refreshes the Dashboard page
        Then the total number of users should increase by 1

    @lib-10-04
    Scenario: Verify totals update after adding a new book
        When a new book is added to the system
        And user refreshes the Dashboard page
        Then the total number of books should increase by 1

    @lib-10-05
    Scenario: Verify totals update after borrowing a book
        When a book is borrowed by a user
        And user refreshes the Dashboard page
        Then the total number of borrowed books should increase by 1

    @lib-10-06
    Scenario: Verify persistence of totals across sessions
        When user logs out and logs back in as "admin"
        And user navigates to the "Dashboard" page
        Then the total numbers for users, books, and borrowed books should remain unchanged

    @lib-10-07
    Scenario: Verify totals are visible only to admin users
        When user logs out
        And user logs in as "student"
        And user attempts to access the "Dashboard" page
        Then user should not see the total numbers for users, books, and borrowed books



#* AC1: Admin should see the total number of users and the “Users” text.
#* AC2: Admin should see the total number of books and the “Books” text.
#* AC3: Admin should see the total number of borrowed books and the “Borrowed Books” text.


# TODO: Verify admins see the total number of users and the “Users” text.


# TODO: Verify admins see the total number of books and the “Books” text.


# TODO: Verify admins see the total number of borrowed books and the “Borrowed Books” text.


