Feature: E-mail authentification

  Scenario: verify my e-mail address successfully
    Given I filled out my user profile
    When I click on the button with id "finish_register"
    Then a new popup "E-mail bestätigen" appears
    When I enter an EXAMPLE_CODE in the textfield with id "verification_code"
    And I click on the button with id "verify_code"
    And the codes are similar
    Then the homepage of the app is shown

  Scenario: failing to verify my e-mail address
    Given I filled out my user profile
    When I click on the button with id "finish_register"
    Then a new popup "E-mail bestätigen" appears 
    When I enter an EXAMPLE_CODE in the textfield with id "verification_code"
    And I click on the button with id "verify_code"
    And the codes are not similar
    Then a message is shown "Falscher Bestätigungscode" with buttons "Erneut senden" and "Zurück zur Registrierung"