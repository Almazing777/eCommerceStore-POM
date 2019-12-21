Feature: Sign Up Feature

  Background:
    Given user open register page
  Scenario Outline: Existing user sign up
    When user input email '<email>'
    And user input password '<password>'
    And user input username '<username>'
    And user clicks sign up button
    Then Error message appears '<error message>'
    Examples:
      | email            | password    | username | error message                                            |
      |                  | Qwerty12345 | azat     | Please enter a valid email address                       |
      | azat2@testpro.io |             | azat     | Password must be at least 8 characters long              |
      | azat3@testpro.io | Qwerty12345 |          | Username must be at least 4 characters long              |
