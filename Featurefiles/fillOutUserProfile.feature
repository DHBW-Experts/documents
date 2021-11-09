Feature: fill out the user profile

  Scenario: fill out user-profile on the registration window
    Given I started the app for the first time and clicked on the button with id "register"
    Then I am on the "registrieren" page
    When I enter "Max" in the textfield with id "prename"
    And I enter "Mustermann" in the textfield "surname"
    And I select "Karlsruhe" in the dropdown menu with id "dhbw_location"
    Then the textfield with id "email_address" gets autocompleted to "mustermann.max@student.dhbw-karlsruhe.de"
    And only the name within the textfield is editable.
    When I enter "Informatik" in the textfield with id "major"
    And I enter "TINF20B2" in the textfield with id "course"
    And I enter "Karlsruhe" in the textfield with id "city"
    And I enter "Hi it's me" in the textfield with id "biography"
    And I press the button with id "register_continue"
    Then I am on the "Bitte bestätige dein Konto" page

  Scenario: edit user profile on your profile page
    Given I am signed in and verified with my DHBW email adress "mustermann.max@student.dhbw-karlsruhe.de" and password "PASSWORD"
    And I am on the "Profil" page
    Then the textfields with id "email_address", "dhbw_location", "prename" and "surname" are disabled
    When I enter "Informationstechnik" in the textfield with id "major"
    And I enter "TINF20B3" in the textfield with id"course"
    And I enter "Ettlingen" in the textfield with id "city"
    And I enter "Hi it's Max" in the textfield with id "biography"
    And I press the button with id "save_changes"
    Then I receive a message "Dein Profil wurde aktualisiert!"