@lib-07
Feature: User Groups Filtering

  As an admin, I should be able to filter the user groups on the "Users" page.

  Background:
    Given user is already on the login page
    And user is already logged in as "admin"


   Scenario: Verify user group filter options and default selection
    Then the User Group dropdown should be displayed
    And the "ALL" option should be selected by default
    When user clicks on the User Group filter dropdown
    Then the dropdown should include "ALL", "Librarian", and "Students" options

  Scenario Outline: Filter users by group
    When user selects "<group>" from the User Group filter dropdown
    Then the user list should update to show only users belonging to the "<group>" group
    And all group columns should have the value of "<group>"
    Examples:
      | group     |
      | ALL       |
      | Librarian |
      | Students  |

  Scenario: Clear user group filter
    Given user has applied a "Students" filter on the User Group dropdown
    When user refreshes the page
    Then the User Group dropdown should reset to "ALL"
    And the user list should update to show All users




#* AC1: Admins should be able to filter the user groups on the Users page
#* AC2: Admins should see a filter option for user groups on the "Users" page.
#* AC3: There should be three options under the user groups dropdown menu: ALL, Librarian, and Students
#* AC4: Admins should be able to select a user group from the filter dropdown.
#* AC5: The user list should update to show only users belonging to the selected user group.
#* AC6: Admins should be able to clear the filter to view all users again.



#TODO: Verify that the User Group dropdown is displayed on the Users page

#TODO: Verify that the "ALL" option is selected by default on the Users page

#TODO: Verify that the User Group dropdown menue has "ALL", "Librarian", and "Students" those three options

#TODO: Verify that after the admin filters the user groups by student, then all group columns should have the value of "Students"