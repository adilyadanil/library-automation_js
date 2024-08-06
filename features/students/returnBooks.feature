@lib-04
Feature: Return Books Functionality

    As a user, I should be able to return the borrowed books on the "Borrowing Books" page.


    Background:
        Given user is already on the login page
        And user is already logged in as "student"


    #TODO: Verify that the Return Book button is displayed on the Borrowing Books page for the book(s) students have borrowed
    Scenario: Access Borrowing Books page
        When user is on the homepage
        And user clicks on the "Borrowing Books" module
        Then user should be navigated to the Borrowing Books page

    #TODO: Verify that the books will be retunrd when the student clicks the Return Book button
    Scenario: Return a borrowed book
        Given user is on the "Borrowing Books" page
        When user see NOT RETURNED message in Is Returned section
        Then user return Book button should be clickable for a borrowed book
        And a confirmation message "The book has been returned.." should pop up
        And the book status should be updated to RETURNED

    #TODO: Verify that the Return Book button of the book will be disabled after student returns the book
    Scenario: Attempt to return a book that is already returned
        Given user is on the "Borrowing Books" page
        And user has recently returned a book
        When user tries to return the same book again
        Then Return Book button is not clickable

    Scenario: Verify returned book is available for borrowing
        Given user has returned a book
        When user navigates to the "Books" page
        Then the returned book should be available for borrowing



#* AC1: Users should be able to access the "Borrowing Books" page from the homepage.
#* AC2: The "Borrowing Books" page should display a list of books borrowed by the user.
#* AC3: Each borrowed book should have a "Return Book" button that is clickable if the book is not returned.
#* AC4: When a user returns a book, a confirmation message "The book has been returned.." should pop up.
#* AC5: After returning a book, its status should be updated to "RETURNED".
#* AC6: The "Return Book" button should not be clickable for already returned books.
#* AC7: Returned books should become available for borrowing again on the "Books" page.

#* AC: Students should be able to return the books they borrowed on the Borrowing Books page by clicking Retun Book







