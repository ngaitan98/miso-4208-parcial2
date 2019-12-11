Feature: Vehicle
    Scenario: See the default vehicle
    Given I press "Vehicles"
    And I press "Default vehicle"
    When I clear input field number 1
    And I enter "Test Vehicle" into input field number 1
    And I clear input field number 2
    And I enter "2019" into input field number 2 
    And I clear input field number 3
    And I enter "KND" into input field number 3
    And I clear input field number 4
    And I enter "Testing" into input field number 4
    And I press "Save changes"
    And I wait
    And I press "Test Vehicle"
    Then I should see "Test Vehicle"
    And I should see "2019"
    And I should see "KND"
    And I should see "Testing"
