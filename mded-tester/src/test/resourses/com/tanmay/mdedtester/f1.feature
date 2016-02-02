Feature: Visit Markdown-Editor main page

  Scenario: homepage
    Given I have the url http://editor.tanmayrajani.me
    When I visit the editor
    Then The title should be Markdown-editor