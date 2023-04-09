Feature: User be able to login
  As user
  I want to see home page
  So that I can buy product

  Scenario: As user, I have be able to success login
    Given I am on the login page
    When I input valid username
    And I input valid password
    And I click login button
    Then I am on the home page

    Scenario: As user, I can't login successfully
      Given I am on the login page
      When I input invalid username
      And I input valid password
      And I click login button
      Then I can see error message "Username and password do not match any user in this service"

      Scenario: As user, I can't login successfully
        Given I am on the login page
        When I input valid username
        And I input invalid password
        And I click login button
        Then I can see error message "Username and password do not match any user in this service"

