Feature: Terms

  Scenario: I can create a term
    When I create term with the attributes
      |begins_at|ends_at|
      |2016-01-05 |2016-05-01|
    And I find the created term
    Then the found term should be as expected

  Scenario: Get all terms returns terms
    Given I have a term
    When I retrieve all terms
    Then I should have an array of terms