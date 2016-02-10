Feature: Mutants

  Scenario: I can create a mutant
    When I create mutant with the attributes
    |mutant_name|real_name|power|
    |Woooh      |James    |flight|
    And I find the created mutant
    Then the found mutant should be as expected

  Scenario: Get all mutants returns mutants
    Given I have a mutant
    When I retrieve all mutants
    Then I should have an array of mutants