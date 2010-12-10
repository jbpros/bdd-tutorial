Feature: Drink balance
  As an employee
  I want to see the amounts of added and removed drinks
  So that I can keep a fair balance

  Scenario: Consult drink balance per person
    Given <employee> added <amount> drinks
      | employee | amount |
      | Romain   | 3      |
      | Gil      | 2      |
      | Marc     | 0      |
    Given <employee> drunk <amount> drinks
      | employee | amount |
      | Romain   | 2      |
      | Julien   | 1      |
      | Mark     | 0      |
    When I go to the balance page
    Then I should see the following balances:
      | Romain | 3 | 2 | +1 |
      | Gil    | 2 | 0 | +2 |
      | Julien | 0 | 1 | -1 |
      | Mark   | 0 | 0 |  0 |

