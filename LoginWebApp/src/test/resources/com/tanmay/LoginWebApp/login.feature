Feature: login using credentials

  @second
  Scenario: indexpage login
    Given I visit the app page
    When I enter following credentials:
    | uname | password |
    | tanmay | tanmay |
    Then on the next page I should see "Logged in!"