# 1 Fill out user-profile

## 1.1 Brief Description

Every normal user can fill out their profile while the registration progress and edit their profile later on, making him the admin of his personal information and shared skilltags. For a successfull operation, the user must state his data (changes), such as

- personal information
- skilltags
- login-data

# 2 Flow of Events

## 2.1 Basic Flow

- User clicks on the "Profil einsehen" button.
- User clicks on the "Profil bearbeiten" button.
- User edits any field.
- User clicks on "Speichern" to update his profile, he will be sent to his profile overview again and a message "Dein Profil wurde aktualisiert!" will appear.
- User clicks on "Abbrechen" to close the form without saving the operation.
- User clicks on "Zurück" to close the profile overview.

### 2.1.1 Activity Diagram

![Organization Application Activity Diagram](ActivityDiagrams/fillout.svg)

### 2.1.2 Mock-up

![Create Operation Form Wireframe](Wireframe/createAccount.png)

### 2.1.3 Narrative

```gherkin
Feature: fill out the user profile

  As a signed in user
  i want to fill out my user-profile
  and provide additional information regarding my profession,
  my hobbys, my expertise and what i'm studying
  in order to enable other users to find me if they need help with
  something i'm good at.

  Background:
    Given I am on the homepage or the registration window.

  Scenario: fill out user-profile on the registration window
    Given I started the app for the first time and clicked on "registrieren"
    Then I am on the "registrieren" page
    When I enter "Max" in the field "Vorname"
    And I enter "Mustermann" in the field "Nachname"
    And I select "Karlsruhe" in the dropdown menu "DHBW-Standort"
    Then the field "DHBW-Email Adresse" gets autocompleted to "mustermann.max@student.dhbw-karlsruhe.de"
    And only the name, not the domain of the email can be changed.
    When I enter "Informatik" in the field "Studiengang"
    And I enter "TINF20B2" in the field "Kurs"
    And I enter "Karlsruhe" in the field "City"
    And I enter "Hi it's me" in the field "Bio"
    And I press the "weiter" button
    Then I am on the "Bitte bestätige dein Konto" page

  Scenario: edit user profile on your profile page
    Given I am signed in and verified with my DHBW email adress "mustermann.max@student.dhbw-karlsruhe.de" and password "PASSWORD"
    And I am on the "Profil" page
    Then the fields "DHBW-Email Adresse", "DHBW-Standort", "Vorname" and "Nachname" can't be edited
    When I enter "Informationstechnik" in the field "Studiengang"
    And I enter "TINF20B3" in the field "Kurs"
    And I enter "Ettlingen" in the field "City"
    And I enter "Hi it's Max" in the field "Bio"
    And I press the "speichern" button
    Then I receive a message "Dein Profil wurde aktualisiert!"
```

## 2.2 Alternative Flows

- User clicks on the "Profil" page.
- User clicks on the "Profil bearbeiten" button.
- User clicks on the "Profil löschen" button and confirms. He will be sent to the login-page of the app and his profile will be no longer available in the system.

# 3 Special Requirements

(n/a)

# 4 Preconditions

## 4.1 Login

The user has to be logged in to the system.

# 5 Postconditions

(n/a)

# 6 Extension Points

(n/a)
