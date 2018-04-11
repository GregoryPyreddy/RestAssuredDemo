@Sanity
Feature: Login
  In order to verify the Endpoints of Login

  # if some steps are common between the scenarios, they can be added to Background
  Scenario: In order to verify POST Request for Login Page
    Given the Initial Setup is done for Test Condition "TC01" from "Home" Sheet "In order to verify POST Request for Login Page"
    When the "post" Request is Executed
    Then user should get Expected Status code "200" and Response should match with "POSTSchema.json"

  Scenario: In order to verify GET Request for Login Page
    Given the Initial Setup is done for Test Condition "TC02" from "Home" Sheet "In order to verify GET Request for Login Page"
    When the "get" Request is Executed
    Then user should get Expected Status code "200" and Response should match with "POSTSchema.json"
    And Expected Data in Response should match
      | Key    | Value |
      | scope  | APP   |
      | status | OK    |
