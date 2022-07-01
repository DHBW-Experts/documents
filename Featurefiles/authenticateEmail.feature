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
