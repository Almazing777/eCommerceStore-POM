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

#    And user closes the browser

#  Scenario: open login page
#    Given user open browser
#    When user open login page
#    Then user closes the browser
#
#  Scenario: Existing user sign up with empty email
#    When user input email ""
#    And user input password "Qwerty1"
#    And user input username "azat"
#    And user clicks sign up button
#    Then Error message should appear
#
#  Scenario: Existing user sign up with wrong email
#    When user input email "azat@testpro.io"
#    And user input password "Qwerty1"
#    And user input username "azat"
#    And user clicks sign up button
#    Then Error message should appear