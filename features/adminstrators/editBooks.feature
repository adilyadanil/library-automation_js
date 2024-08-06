@lib-10
Feature: Edit Books Functionality

  As an admin, I should be able to edit books on the "Books" page.
  Background:
    Given user is already on the login page
    And user is already logged in as "admin"

  #TODO: Verify the Edit Book buttons should be displayed and eanbled to the admin users
  Scenario: Access Books page and open Edit Book form
    Given user is on the homepage
    When user navigates to the "Books" page
    Then user should see the "Edit Book" button for each book
    When user clicks on the "Edit Book" button for a specific book
    Then the Edit Book form should be displayed with the current book information

  #TODO: Verify admin users can edit the Book Name, ISBN, Year, Author, Category and Description of the Book
  Scenario: Edit and save book information
    Given the Edit Book form is displayed for a specific book
    When user modifies the book information
    And user clicks on the "Save changes" button
    Then user should see a "The book has been updated" confirmation message


  Scenario: Verify the Save changes button
    Given the Edit Book form is displayed with valid fields
    Then the "Save changes" button should be enabled




#* AC4: The edit form should include fields for Book Name, ISBN, Year, Author, and Book Category.(extra)


#* AC1: Admins should be able to access the "Books" page from the main modules.
#* AC2: Admins should see an "Edit Book" button for each book on the "Books" page.
#* AC3: Clicking the "Edit Book" button should open a form with the current book information.
#* AC5: Admins should be able to modify the book information in the edit form.
#* AC6: The "Save changes" button should be enabled when the form has valid input.
#* AC7: After saving changes, a confirmation message "The book has been updated" should be displayed.




#* AC: Admin users should be able to edit books on the "Books" page by clicking edit book

#! Please make sure to change it back to the original book information after the automation is complete

