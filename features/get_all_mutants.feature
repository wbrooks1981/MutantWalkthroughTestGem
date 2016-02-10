Feature: Get all mutants

  Scenario: Get all mutants returns mutants
    Given I have a mutant
    When I retrieve all mutants
    Then I should have an array of mutants