# 1 Edit Skilltags in Profile

## 1.1 Brief Description

Every user can add and delete tags to his profile that give other users information about their skills and knowledge. Skilltags can be related to one of the following topic fields:

- DHBW lecture topics
- subject oriented topics that are not taught at the DHBW
- private topics that have nothing to do with the DHBW

Those skilltags can be publicly searched and found by every other user.

# 2 Flow of Events

## 2.1 Basic Flow

- User clicks on "Profil einsehen" button.
- User clicks on "Profil bearbeiten" button.
- User clicks on "Skilltag hinzufügen" button and gets a textfield where he can enter the skill to create a new tag after clicking on "Speichern".
- User clicks on "Änderungen speichern" and gets back to his profile overview.

### 2.1.1 Activity Diagram

![Activity Diagram](../ActivityDiagrams/editSkilltag.svg)

### 2.1.2 Mock-up

![Create Operation Form Wireframe](../Wireframe/editSkilltags.png)

### 2.1.3 Narrative

```gherkin
Feature: adding new skilltags

  As a signed in user
  i want to add new skilltags
  and provide them to others in order to help them if needed

  Background:
    Given I am on the homepage

  Scenario: opening the "Profil bearbeiten" menu
    Given I am signed in with username "USER" and password "PASSWORD"
    And I am on the "main" page
    When I press the "Profil einsehen" button
    Then I am on the "Profilübersicht" page
    When I press the "Profil bearbeiten" button
    Then I am on the "Profil bearbeiten" page

  Scenario: enter a valid new skilltag and save the operation
    Given I am signed in with username "USER" and password "PASSWORD"
    And I am on the "Profil bearbeiten" page
    When I press the "Skilltag hinzufügen" button
    Then the "Skill eintragen" dialogue opens
    When I enter "skill_XY" in the field "Skill"
    And I press the "Speichern" button
    Then I am on the "Profil bearbeiten" page
    And I see the new skilltag on the "Profil bearbeiten" page

  Scenario: enter an invalid new skilltag and save the operation
    Given I am signed in with username "USER" and password "PASSWORD"
    And I am on the "Profil bearbeiten" page
    When I press the "Skilltag hinzufügen" button
    Then the "Skill eintragen" dialogue opens
    When I enter EMPTY_STRING in the field "Skill"
    And I press the "Speichern" button
    Then I get a message dialogue "Feld darf nicht leer sein"

    Scenario: deleting a skilltag
    Given I am signed in with username "USER" and password "PASSWORD"
    And I am on the "Profil bearbeiten" page
    When I click on the "X" button on a "skill_XY"-tag
    Then a "Skill löschen?" confirm-dialogue opens
    When I confirm the dialogue
    Then the skilltags gets deleted from my profile
```

## 2.2 Alternative Flows

(n/a)

# 3 Special Requirements

(n/a)

# 4 Preconditions

## 4.1 Login

The user has to be logged in to the system.

# 5 Postconditions

(n/a)

# 6 Extension Points

(n/a)
