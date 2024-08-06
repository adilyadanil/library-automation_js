
@lib-11
Feature: Add Users Functionality
    As an admin, I should be able to add users on the "Users" page.
    Background:
        Given user is already on the login page
        And user is already logged in as "admin"


    @lib-11-02
    Scenario: Verify presence and functionality of Add User button
        Given user is on the "Users" page
        Then the "Add User" button should be displayed
        And the "Add User" button should be enabled

    @lib-11-03
    Scenario: Add a new student user
        Given user is on the "Users" page
        When user clicks the "Add User" button
        And user fills out the form with student user details
        And user sets the status to "Inactive"
        And user clicks the "Save changes" button
        Then 'The user has been created.' message should be displayed
        And the newly added student user should be displayed in the Users table

    @lib-11-04
    Scenario: Add a new admin user
        Given user is on the "Users" page
        When user clicks the "Add User" button
        And user fills out the form with admin user details
        And user sets the status to "Inactive"
        And user clicks the "Save changes" button
        Then 'The user has been created.' message should be displayed
        And the newly added admin user should be displayed in the Users table

    @lib-11-05
    Scenario: Verify presence of Edit User button
        Given user is on the "Users" page
        Then user should see the "Edit User" button

    @lib-11-06
    Scenario: Open Edit User form
        Given user is on the "Users" page
        When user clicks the "Edit User" button
        Then the Edit User Information form should be displayed

    @lib-11-07
    Scenario: Verify the Save changes button
        Given the Edit User form is displayed with valid fields
        Then the "Save changes" button should be enabled

    @lib-11-08
    Scenario: Verify the Close button
        Given the Edit User form is displayed with valid fields
        Then the "Close" button should be enabled

    @lib-11-09
    Scenario: Verify successful user update
        Given the Edit User form is displayed with valid fields
        When user clicks "Save changes" button
        Then 'The user has been updated.' message should be displayed





#* AC: Admin users should be able to see the Add User button on the Users page
#* AC: Admin should be able to add student user and admin user to the application

#! Please make sure to set the status of the newly added to "Inactive" after the automation is done


# TODO: Verify that the Add User button is displayed on the Users page
# TODO: Verify that the Add User button is enabled on the Users page
# TODO: Verify that the user can add a new student user successfully
# TODO: Verify that the user can add a new admin user successfully
# TODO: Verify that the newly added user is displayed in the Users table


