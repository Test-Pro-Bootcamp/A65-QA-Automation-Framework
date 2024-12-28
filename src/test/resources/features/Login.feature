Feature: Login feature

  Scenario Outline: Login Success
    Given I open login page
    When I enter email <email>
    And I enter password <password>
    And I submit
    Then I logged in
    Examples:
      | email                | password   |
      | "planner@testpro.io" | "6JooL8gp" |



  Scenario: Forgot Password
    Given I open login page
    When I click Forgot Password
    And I enter email "test@testpro.io"
    And I submit
    Then I expect a message "We've sent a confirmation link to the email. Please continue by clicking on it"