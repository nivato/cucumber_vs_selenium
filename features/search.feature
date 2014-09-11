Feature: Google search

  Scenario: Search for a keyword
    Given a user on a "www.google.com" page
    When I enter "cucumber" into a search input
    And I click on Search button
    Then resulting page contains "cukes.info" link
