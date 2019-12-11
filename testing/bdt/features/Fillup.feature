Feature:  Fillup
  Scenario: As a user I want to add a fillup without filling any input
    When I press "Save Fillup"
    Then I should see "Invalid value"
  Scenario: As a user I want to add a fillup without filling the price input
    When I enter "5" into input field number 2
    And I enter "4" into input field number 3
    And I press "Save Fillup"
    Then I should see "Invalid value for price"
  Scenario: As a user I want to add a fillup without filling the odometer input
    When I enter "5" into input field number 1
    And I enter "4" into input field number 2
    And I press "Save Fillup"
    Then I should see "Invalid value for odometer"
  Scenario: As a user I want to add a fillup without filling the gallons input
    When I enter "5" into input field number 1
    And I enter "4" into input field number 3
    And I press "Save Fillup"
    Then I should see "Invalid value for volume"
  Scenario: As a user I want to add a simple fillup
    When I enter "1" into input field number 1
    And I enter "2" into input field number 2
    And I enter "3" into input field number 3
    And I press "Save Fillup"
    Then I press "History"
    And I should see "2.00 g"
    And I should see "1.00"
  Scenario: As a user I want to verify my created fillup
    And I press "History"
    When I press "2.00 g"
    Then I should see "false"
    And I should see "2.00 Gallons" 
    And I should see "3.00 mi"
    And I should see "$1.00"
    And I should see "$2.00"
  Scenario: As a user I want to edit my created fillup
    And I press "History"
    And I press "2.00 g"
    And I press "Edit"
    When I clear input field number 1
    And I enter "11" into input field number 1
    And I clear input field number 2
    And I enter "22" into input field number 2
    And I clear input field number 3
    And I enter "33" into input field number 3
    And I press "Tank was not filled to the top"
    And I press "Save changes"
    And I wait
    And I go back
    And I press "22.00 g"
    Then I should see "true" 
    And I should see "33.00 mi"
    And I should see "22.00 Gallons"
    And I should see "$11.00"
    And I should see "$242.00"
    


