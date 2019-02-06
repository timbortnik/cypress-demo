Feature: filter cards

  I want to filter cards by name and city

  Background:
    Given I open OOS page

  Scenario: filter by name
    Given I see applicant card
    When I enter "kfbaiflhefkaebrfkaeybv12333" search name
    And I press Enter
    Then I see no applicant cards

  Scenario: filter by city
    Given I see applicant card
    When I enter "kfbaiflhefkaebrfkaeybv12333" search city
    And I press Enter
    Then I see no applicant cards

  Scenario: Clean filter
    Given I enter "kfbaiflhefkaebrfkaeybv12333" search city
    And I press Enter
    And I see no applicant cards
    When I click Clear button
    Then I see applicant card
