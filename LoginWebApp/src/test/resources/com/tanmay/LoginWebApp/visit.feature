Feature: Visit our web app page

  Scenario: index page
    Given the app is running
    When I visit the app page
    Then page title should be "Welcome people"