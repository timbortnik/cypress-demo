Feature: The OOS app smoke

  I want to open an OOS app page and see some anticipated elements

  Background:
    Given I open OOS page

  Scenario: OOS app main heading
    Then I see "OpenOceanStudio" heading

  Scenario: Status headings
    Then I see following level 2 headings:
      | heading      |
      | Applied      |
      | Interviewing |
      | Hired        |

  Scenario: Cards
    Then I see applicant card
