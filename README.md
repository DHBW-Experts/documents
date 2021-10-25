# DHBW-Experts - Software Requirements Specification

## Table of contents

- [Table of contents](#table-of-contents)
- [Introduction](#1-introduction)
  - [Purpose](#11-purpose)
  - [Scope](#12-scope)
  - [Definitions, Acronyms and Abbreviations](#13-definitions-acronyms-and-abbreviations)
  - [References](#14-references)
  - [Overview](#15-overview)
- [Overall Description](#2-overall-description)
  - [Vision](#21-vision)
  - [Use Case Diagram](#22-use-case-diagram)
  - [Technology Stack](#23-technology-stack)
- [Specific Requirements](#3-specific-requirements)
  - [Functionality](#31-functionality)
  - [Usability](#32-usability)
  - [Reliability](#33-reliability)
  - [Performance](#34-performance)
  - [Supportability](#35-supportability)
  - [Design Constraints](#36-design-constraints)
  - [Online User Documentation and Help System Requirements](#37-on-line-user-documentation-and-help-system-requirements)
  - [Purchased Components](#purchased-components)
  - [Interfaces](#39-interfaces)
  - [Licensing Requirements](#310-licensing-requirements)
  - [Legal, Copyright And Other Notices](#311-legal-copyright-and-other-notices)
  - [Applicable Standards](#312-applicable-standards)
- [Supporting Information](#4-supporting-information)

## 1. Introduction

### 1.1 Purpose

This Software Requirements Specification (SRS) describes all specifications for the application "DHBW-Experts". It includes an overview about this project and its vision, detailed information about the planned features and boundary conditions of the development process.

### 1.2 Scope

The project is going to be realized as an Android and IOS App, but won't be released in their associated App stores due to the need of a developer Account.

Actors of this App can be users or admins.

Planned Subsystems are:

- Account system
  A user can create an account and the account data will be encrypted and stored in an Azure SQL database.
- Mail server
  The mail server will be used to verify that all emails belong to the domain @student.dhbw-karlsruhe.de.
- Database and their corresponding API
  The database will store all of the userdata, skilltags and the login data for every user.
- Skill confirmation system
  Users will be able to confirm that another user has a certain skill.
- Search for skilltags
  Users will be able to find other users by searching for skilltags.

### 1.3 Definitions, Acronyms and Abbreviations

| Abbrevation | Explanation                         |
| ----------- | ----------------------------------- |
| SRS         | Software Requirements Specification |
| UC          | Use Case                            |
| n/a         | not applicable                      |
| tbd         | to be determined                    |
| UCD         | overall Use Case Diagram            |
| FAQ         | Frequently asked Questions          |
| UI          | User Interface                      |

### 1.4 References

| Title                                           |    Date    | Publishing organization |
| ----------------------------------------------- | :--------: | ----------------------- |
| [DHBW-Experts](https://dhbw-experts.github.io/) | 19.10.2021 | DHBW-Experts Team       |
| [GitHub](https://github.com/DHBW-Experts)       | 19.10.2021 | DHBW-Experts Team       |

### 1.5 Overview

The following chapter provides an overview of this project with vision and Overall Use Case Diagram. The third chapter (Requirements Specification) delivers more details about the specific requirements in terms of functionality, usability and design parameters. Finally there is a chapter with supporting information.

## 2. Overall Description

### 2.1 Vision

The very basic idea is to create an easy way for students to find experts concerning a specific subject. We want to create an app, which will enable our users to create a profile, where one can link any certain topic, they are an Expert in. This will be possible by adding hashtags (e.g., #C++ or #BWL, although you can add non-DHBW-related tags like #csgo or #Tax too) alongside their DHBW-related personal information to their student profile. These tags can be searched by anyone needing help, creating an expertise-database.

Nowadays, almost every smartphone can scan NFC-Chips and we think it is possible to link more information to the NFC-Chip than just your cafeteria balance. This is why we want to encourage our users to voluntarily link their RFID student ID card to our app to create their own digital business card - Just scan someone’s ID with our app and get an overview of who you are dealing with. Find out what they are good at and enjoy an instant conversation starter.

Our app should be available as an Android and iOS-app (Although it will be almost impossible to deploy without an Apple Developer account) using Ionic. Ionic allows you to develop an application that works flexible on iOS, android and pcs.

### 2.2 Use Case Diagram

![OUCD](./UseCase-Diagram.jpg)

### 2.3 Technology Stack

The technology we use is:

Backend:

- Azure SQL (Cloud Database)
- C# API
- Mail Server
- Typescript for App Logic

Frontend:

- Ionic App with HTML, Angular and Sass

IDE:

- Visual Studio Code

Project Management:

- YouTrack
- GitHub
- Discord

Deployment:

- Docker
- Github and Azure container registry
- Github Actions

Testing:

- Ionic Jasmine

## 3. Specific Requirements

### 3.1 Functionality

This section will explain the different use cases, you could see in the Use Case Diagram, and their functionality.  
Until December we plan to implement:

- 3.1.1 Developing an executable App
- 3.1.2 Creating an account
- 3.1.3 Logging in
- 3.1.4 Logging out
- 3.1.5 being able to create a user profile
- 3.1.6 adding skilltags to an Account

Until June, we want to implement:

- 3.1.7 authenticate via a DHBW-email-adress
- 3.1.6 being able to link and scan one's student-id
- 3.1.7 search for different skilltags
- 3.1.8 verify skilltags of other users
- 3.1.9 adding a profile to a contact list

#### 3.1.1 Scanning an ID

Every account will be linked to a student ID. To add an student ID to your Account, simply scan the ID with an NFC capable smartphone.

#### 3.1.2 adding skilltags to an Account

Every user can show their skills by adding their personal skilltags to their profile. Skilltags can also be removed.

#### 3.1.3 Creating an account

To identify all users we need an account system. This account system enables us to build important functions such as scanning the student ID from someone else to get information about their skilltags.

#### 3.1.4 Logging in

The app will provide the possibility to register and log in.

#### 3.1.5 Logging out

In case you share your phone or just want to be cautius about your privacy you should be able to manually log out.

#### 3.1.6 Email validation

Every user needs to confirm that they are a student at the DHBW by verifying their email adress.

#### 3.1.7 search for different skilltags

A user can search for different skill tags and find other users that have this skill.

#### 3.1.8 confirmation of skilltags by other users

Users can confirm that another user has a certain skill as specified on their profile.

#### 3.1.9 adding a profile to a contact list

Users can add profiles of other users to a contact list. That way recent contacts can be saved.

### 3.2 Usability

We plan on designing the user interface as intuitive and self-explanatory as possible to make the user feel as comfortable as possible using the app.

#### 3.2.1 Training time

It might take the user a short amount of time to understand the purpose of the app. Besides that, our goal is that a user installs the application, opens it and is able to use all features without any help.

### 3.3 Reliability

#### 3.3.1 Availability

The server will be online during the day so that there is always the chance for students to connect each other on the campus in the forenoon or even after the lessons.

#### 3.3.2 Defect Rate

Our goal is to store all the data properly, so that even when the server is down or the app crashes, users won't need to register them again. We also want to reduce the amount of errors, once the app is online.

### 3.4 Perfomance

#### 3.4.1 Capacity

The developed System should be able to manage all students of the DHBW, for the experimental purpose it will theoretically be at least possible for all of the students at the DHBW Karlsruhe to register to our app.

#### 3.4.2 Storage

Since the app doesn't have a lot of complex functionalities, there will be minor storage needed on our clients' smartphones.

#### 3.4.3 App perfomance / Response time

For making the user experience much better, we plan to minimise response times and improve the perfomance constantly, if possible.

### 3.5 Supportability

#### 3.5.1 Coding Standards

We are going to write the code by using all of the most common clean code standards. That means we will name our methodes and variables after their funcionalities and in english, so everyone in our group understands the code of others easily.

#### 3.5.2 Testing Strategy

In the first phase of development, our application won't have a high test coverage, this will follow in the future (June 2022).

### 3.6 Design Constraints

We are trying to provide a modern and easy to handle design for the UI aswell as for the architecture of our application. Therefore we want the app to be very self-explaining.

To implement the UI we will use the UI Components delivered by IONIC.

### 3.7 Online User Documentation and Help System Requirements

There should be no need for a help system, since we are trying to construct an application that is very easy to understand. Anyway, the official Blog from our team could be used in case any of the functionalities are not clear.

### 3.8 Purchased Components

We don't have any purchased components yet. If so, then we will list them here in the future.

### 3.9 Interfaces

#### 3.9.1 User Interfaces

The User interfaces that will be implented are:

- Login - this page is used to log in
- Register - provides a registration form
- Contact List - save contacts to quickly find them again
- Edit Profile - own personal information can be edited and skilltags can be added
- View Profile - view the profile of a specific user
- Search - search for a user by specific skilltags
- Settings - shows the settings

#### 3.9.2 Hardware Interfaces

NFC Sanner

#### 3.9.3 Software Interfaces

The app will be runnable on modern version of Android and IOS.

#### 3.9.4 Communication Interfaces

The server and hardware will communicate using the http protocol.

### 3.10 Licensing Requirements

### 3.11 Legal, Copyright, and Other Notices

The logo is licensed to the DHBW-Experts Team and is only allowed to use for the application. We do not take responsibilty for any incorrect data or errors in the application.

### 3.12 Applicable Standards

The development will follow the common clean code standards and naming conventions. We will also create a definition of them, which will be added here as soon as possible.

## 4. Supporting Information

For any further information you can contact the DHBW-Experts Team or check our [DHBW-Experts Blog](https://dhbw-experts.github.io/).
The Team Members are:

- Noah Kilders
- Lukas Holler
- Tim Czerkas
- Ralph Böhm

<!-- Picture-Link definitions: -->

[oucd]: https://github.com/IB-KA/CommonPlayground/blob/master/UseCase-Diagram.jpg "Overall Use Case Diagram"
