@Sanity
Feature: HomePage
  In order to verify the endpoints of HomePage

  # if some steps are common between the scenarios, they can be added to Background
  @FinalReport
  Scenario: In order to verify GET Request for Home Page
    Given the Initial Setup is done for Test Condition "TC03" from "Home" Sheet "In order to verify GET Request for Home Page"
    When the "get" Request is Executed
    Then user should get Expected Status code "200" and Response should match with "GETSchema.json"

  Scenario: In order to verify GET Request for Home Page items
    Given the Initial Setup is done for Test Condition "TC04" from "Home" Sheet "In order to verify GET Request for Home Page items"
    When the "get" Request is Executed
    Then user should get Expected Status code "200" and Response should match with "GETSchema.json"
