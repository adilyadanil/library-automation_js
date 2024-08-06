@lib-06
Feature: Borrowing books

  As a user, I should be able to borrow books on the "Books" Page.

  Background:
    Given user is already on the login page
    And user is already logged in as "student"

  @lib-06-01
  Scenario: Verify Borrow Book button visibility and functionality
    Then the Borrow Book button should be displayed for each book
    And the Borrow Book button should be enabled for available books
    And the Borrow Book button should be disabled for already borrowed books

  @lib-06-02
  Scenario: Successfully borrowing an available book
    When user clicks on the Borrow Book button for an available book
    Then the message "The book has been borrowed" should be displayed
    And user's account name should be displayed in the Borrowed By column for that book
    And the Borrow Book button for that book should become disabled
    When user navigates to the "Borrowing Books" page
    Then the borrowed book should be displayed in the list

  @lib-06-03
  Scenario: Attempting to borrow an already borrowed book
    Given there is a book already borrowed by another user
    Then the Borrow Book button for that book should not be clickable
    When user refreshes the page
    Then the Borrow Book button for that book should still not be clickable

  @lib-06-04
  Scenario: Verify borrowed books persistence
    Given user has borrowed a book
    When user logs out and logs back in
    And user navigates to the "Books" page
    Then the Borrow Book button for the borrowed book should still be disabled
    And user's account name should still be displayed in the Borrowed By column for that book


#* AC1: The Borrow Book button is displayed in the books page
#* AC2: The Borrow Book button should be disabled after user clicks it
#* AC3: The Borrow Book button should be enabled for the books that the student can borrow
#* AC4: The books student borrowed should be displayed in the Borrowing Books page


# TODO: Verify that the Borrow Book Button is displayed on the Books page

# TODO: Verify that the Borrow Book button is disabled if the book is already borrowed by a student

# TODO: Verify that the Borrow Book button is enabled if the book is not borrowed by a student yet

# TODO: Verify that the name of the student is displayed in the Borrowed By column once the student borrows the book

# TODO: Verify that the book is displayed in the Borrowing Books page after the student click the Borrow Book button

