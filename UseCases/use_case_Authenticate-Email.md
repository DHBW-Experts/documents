# 1 Authenticate E-mail Address

## 1.1 Brief Description

Every user has to be a student from the DHBW, therefore they need to verify their e-mail address which has to end with a valid domain like '@student.dhbw-karlsruhe.de. Upon registering users will receive an email with an verification link to authenticate the user account.

# 2 Flow of Events

## 2.1 Basic Flow

- User clicks on "Registrieren" button.
- User will be logged out and asked to verify their email adress.
- User checks his latest e-mail and clicks on the contained link.
- User will see an "Verifizierung erfolgreich" screen.
- User can login again.

### 2.1.1 Activity Diagram

![Organization Application Activity Diagram](../ActivityDiagrams/verifyEmail.svg)

### 2.1.2 Mock-up

![Create Operation Form Wireframe](../Wireframe/verifyEmail.png)

### 2.1.3 Narrative

```gherkin
Feature: E-mail authentification

  As a new user
  I want to register to the app
  and I want to be confirmed as a student of the DHBW

  Background:
    Given I am on the registration window.

  Scenario: verify my e-mail address successfully
    Given I entered my email and specified a password
    When I click on "Registrieren"
    Then I will be logged out and asked to verify my email adress
    When I click on the link in the email I received
    Then I will be able to log in.

  Scenario: failing to verify my e-mail address
    Given I entered my email and specified a password
    When I click on "Registrieren"
    Then I will be logged out and asked to verify my email adress
    When I try to login without verifying my email adress
    Then I will be logged out again.
```

## 2.2 Alternative Flows

(n/a)

# 3 Special Requirements

(n/a)

# 4 Preconditions

## 4.1 Login

The user has tried to register himself.

# 5 Postconditions

(n/a)

# 6 Extension Points

(n/a)
