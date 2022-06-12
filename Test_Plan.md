# Test Plan Template

## Table of contents

- [1. Introduction](#1-introduction)
  - [1.1 Purpose](#11-purpose)
  - [1.2 Scope](#12-scope)
  - [1.3 Intended Audience](#13-intended-audience)
  - [1.4 Document Terminology and Acronyms](#14-document-terminology-and-acronyms)
  - [1.5 References](#15--references)
  - [1.6 Document Structure](#16-document-structure)
- [2. Evaluation Mission and Test Motivation](#2-evaluation-mission-and-test-motivation)
  - [2.1 Background](#21-background)
  - [2.2 Evaluation Mission](#22-evaluation-mission)
  - [2.3 Test Motivators](#23-test-motivators)
- [3. Target Test Items](#3-target-test-items)
- [4. Outline of Planned Tests](#4-outline-of-planned-tests)
  - [4.1 Outline of Test Inclusions](#41-outline-of-test-inclusions)
  - [4.2 Outline of Other Candidates for Potential Inclusion](#42-outline-of-other-candidates-for-potential-inclusion)
  - [4.3 Outline of Test Exclusions](#43-outline-of-test-exclusions)
- [5. Test Approach](#5-test-approach)
  - [5.1 Initial Test-Idea Catalogs and Other Reference Sources](#51-initial-test-idea-catalogs-and-other-reference-sources)
  - [5.2 Testing Techniques and Types](#52-testing-techniques-and-types)
    - [5.2.1 Data and Database Integrity Testing](#521-data-and-database-integrity-testing)
    - [5.2.2 Functional Testing](#522-functional-testing)
    - [5.2.3 Business Cycle Testing](#523-business-cycle-testing)
    - [5.2.4 User Interface Testing](#524-user-interface-testing)
    - [5.2.5 Performance Profiling](#525-performance-profiling)
    - [5.2.6 Load Testing](#526-load-testing)
    - [5.2.7 Stress Testing](#527-stress-testing)
    - [5.2.8 Volume Testing](#528-volume-testing)
    - [5.2.9 Security and Access Control Testing](#529-security-and-access-control-testing)
    - [5.2.10 Failover and Recovery Testing](#5210-failover-and-recovery-testing)
    - [5.2.11 Configuration Testing](#5211-configuration-testing)
    - [5.2.12 Installation Testing](#5212-installation-testing)
- [6. Entry and Exit Criteria](#6-entry-and-exit-criteria)
  - [6.1 Test Plan](#61-test-plan)
    - [6.1.1 Test Plan Entry Criteria](#611-test-plan-entry-criteria)
    - [6.1.2 Test Plan Exit Criteria](#612-test-plan-exit-criteria)
    - [6.1.3 Suspension and Resumption Criteria](#613-suspension-and-resumption-criteria)
  - [6.2 Test Cycles](#62-test-cycles)
    - [6.2.1 Test Cycle Entry Criteria](#621-test-cycle-entry-criteria)
    - [6.2.2 Test Cycle Exit Criteria](#622-test-cycle-exit-criteria)
    - [6.2.3 Test Cycle Abnormal Termination](#623-test-cycle-abnormal-termination)
- [7. Deliverables](#7-deliverables)
- [7.1 Test Evaluation Summaries](#71-test-evaluation-summaries)
- [7.2 Reporting on Test Coverage](#72-reporting-on-test-coverage)
- [7.3 Perceived Quality Reports](#73-perceived-quality-reports)
- [7.4 Incident Logs and Change Requests](#74-incident-logs-and-change-requests)
- [7.5 Smoke Test Suite and Supporting Test Scripts](#75-smoke-test-suite-and-supporting-test-scripts)
- [7.6 Additional Work Products](#76------additional-work-products)
  - [7.6.1 Detailed Test Results](#761-----detailed-test-results)
  - [7.6.2 Additional Automated Functional Test Scripts](#762-----additional-automated-functional-test-scripts)
  - [7.6.3 Test Guidelines](#763-----test-guidelines)
  - [7.6.4 Traceability Matrices](#764-----traceability-matrices)
- [8. Testing Workflow](#8-testing-workflow)
- [9. Environmental Needs](#9-environmental-needs)
  - [9.1 Base System Hardware](#91-base-system-hardware)
  - [9.2 Base Software Elements in the Test Environment](#92-base-software-elements-in-the-test-environment)
  - [9.3 Productivity and Support Tools](#93-productivity-and-support-tools)
  - [9.4 Test Environment Configurations](#94-test-environment-configurations)
- [10. Responsibilities, Staffing, and Training Needs](#10-responsibilities--staffing--and-training-needs)
  - [10.1 People and Roles](#101-people-and-roles)
  - [10.2 Staffing and Training Needs](#102-staffing-and-training-needs)
- [11. Iteration Milestones](#11-iteration-milestones)
- [12. Risks, Dependencies, Assumptions, and Constraints](#12-risks--dependencies--assumptions--and-constraints)
- [13. Management Process and Procedures](#13-management-process-and-procedures)
- [14. Metrics](#14-metrics)
## 1. Introduction

### 1.1 Purpose

The purpose of the Iteration Test Plan is to gather all of the information necessary to plan and control the test effort for a given iteration. It describes the approach to testing the software.
This Test Plan for DHBW-Experts supports the following objectives:

- Identifies the items that should be targeted by the tests.
- Identifies the motivation for and ideas behind the test areas to be covered.
- Outlines the testing approach that will be used.
- Identifies the required resources and provides an estimate of the test efforts.

### 1.2 Scope

This test plan will cover several types of tests. The different levels are Unit and Integration tests. With those we can also differentiate different types of testing, including functionality, usability and reliability. The testplan will not address performance testing.

### 1.3 Intended Audience

- Collaborators
- Clients (Prof. Berkling)
- Security oriented Users

### 1.4 Document Terminology and Acronyms

This subsection provides the definitions of any terms, acronyms, and abbreviations required to properly interpret the Test Plan.

| Abbr | Abbreviation                        |
| ---- | ----------------------------------- |
| API  | Application Programmable Interface  |
| CI   | Continuous Integration              |
| CD   | Continuous Delivery/Deployment      |
| n/a  | not applicable                      |
| SRS  | Software Requirements Specification |
| tbd  | to be determined                    |
| UI   | User Interface                      |
| VC   | Version Control                     |
| TDD  | Test Driven Development             |

### 1.5 References

This subsection provides a list of the documents referenced elsewhere within the Test Plan.

| Title                                                                                                                            |   Date    | Publishing organization |
| -------------------------------------------------------------------------------------------------------------------------------- | :-------: | ----------------------- |
| [Blog](https://dhbw-experts.github.io/)                                                                                          | Oct. 2021 | DHBW-Experts            |
| [GitHub Repository](https://github.com/DHBW-Experts)                                                                             | Oct. 2021 | DHBW-Experts            |
| [UC1 Authenticate Email](https://github.com/DHBW-Experts/documents/blob/main/UseCases/use_case_Authenticate-Email.md)            | Oct. 2021 | DHBW-Experts            |
| [UC2 Edit Skilltag](https://github.com/DHBW-Experts/documents/blob/main/UseCases/use_case_Edit-skilltag-in-user-profile.md)      | Oct. 2021 | DHBW-Experts            |
| [UC3 Fill out User Profile](https://github.com/DHBW-Experts/documents/blob/main/UseCases/use_case_Fill-out-user-profile.md)      | Oct. 2021 | DHBW-Experts            |
| [UC4 Find Users by Skilltags](https://github.com/DHBW-Experts/documents/blob/main/UseCases/use_case_Find-others-by-skilltags.md) | Oct. 2021 | DHBW-Experts            |
| [UC5 Verify Skilltags](https://github.com/DHBW-Experts/documents/blob/main/UseCases/use_case_Verify-skilltags.md)                | Oct. 2021 | DHBW-Experts            |
| [Test Plan](https://github.com/DHBW-Experts/documents/blob/main/Test_Plan.md)                                                    | Oct. 2021 | DHBW-Experts            |
| [SRS](https://github.com/DHBW-Experts/documents)                                                                                 | Oct. 2021 | DHBW-Experts            |
| [SAD](https://github.com/DHBW-Experts/documents/blob/main/SAD.md)                                                                | Oct. 2021 | DHBW-Experts            |

## 2. Evaluation Mission and Test Motivation

[Provide an overview of the mission and motivation for the testing that will be conducted in this iteration.]

### 2.1 Background

[Provide a brief description of the background surrounding why the test effort defined by this Test Plan will be undertaken. Include information such as the key problem being solved, the major benefits of the solution, the planned architecture of the solution, and a brief history of the project. Where this information is defined in other documents, you can include references to those other more detailed documents if appropriate. This section should only be about three to five paragraphs in length.]

Testing serves to ensure that the written code does what it is intended to do. It also prevents future code changes to break existing functionality unnoticed. In the context of integration it can also prevent broken software states to be merged into secured VC branches

### 2.2 Evaluation Mission

With the evaluation through tests we want to complete the mission to find several key points. This might incorporate one or more concerns including:

- find as many bugs as possible

- get disabled methods to work

- assess perceived quality risks

- advise about perceived project risks

- certify to a standard

- verify a specification (requirements, design or claims)

- advise about product quality

- satisfy stakeholders

Each mission provides a different context to the test effort and alters the way in which testing should be approached.

### 2.3 Test Motivators

With those tests we want to provide our users the best possible user experience. Testing will therefore be mostly motivated by risks to our project in general, the used technologies and all use cases. It will also be motivated by our developers. They should easily find failures and bugs within the app.

## 3. Target Test Items

The following items and topics will be targetted:

- user profile
- nfc scan
- service methods (persistence)
- angular
- ionic

[Provide a high level list of the major target test items. This list should include both items produced directly by the project development team and items that those products rely on. For example, basic processor hardware, peripheral devices, operating systems, third-party products or components, and so forth. Consider grouping the list by category and assigning relative importance to each motivator.]

## 4. Outline of Planned Tests

We are planning to test our client App with unit tests, covering funtionality and displaying the correct information.

### 4.1 Outline of Test Inclusions

Frontend: Android Client:

- UI testing of views/fragments
- Unit testing

Backend: Azure SQL/MSSQL:

- API testing using Postman testsuite

The tests themself will not be tested and will not account into code coverage.

### 4.2 Outline of Other Candidates for Potential Inclusion

n/a

### 4.3 Outline of Test Exclusions

[Provide a high level outline of the potential tests that might have been conducted, but that have been explicitly excluded from this plan. If a type of test will not be implemented and executed, indicate this in a sentence stating the test will not be implemented or executed, and stating the justification, such as:

- "These tests do not help achieve the evaluation mission."

- "There are insufficient resources to conduct these tests."

- "These tests are unnecessary due to the testing conducted by xxxx."

As a heuristic, if you think it would be reasonable for one of your audience members to expect a certain aspect of testing to be included that you will not or cannot address, you should note its exclusion. If the team agrees the exclusion is obvious, you probably don't need to list it.]

## 5. Test Approach

[The Test Approach presents the recommended strategy for designing and implementing the required tests. Sections 3, Target Test Items, and 4, Outline of Planned Tests, identified what items will be tested and what types of tests would be performed. This section describes how those tests will be realized.
One aspect to consider for the test approach is the techniques to be used. This should include an outline of how each technique can be implemented, both from a manual and/or an automated perspective, and the criterion for knowing that the technique is useful and successful. For each technique, provide a description of the technique and define why it is an important part of the test approach by briefly outlining how it helps achieve the Evaluation Mission or addresses the Test Motivators.
Another aspect to discuss in this section is the Fault or Failure models that are applicable and ways to approach evaluating them.
As you define each aspect of the approach, you should update section 10, Responsibilities, Staffing, and Training Needs, to document the test environment configuration and other resources that will be needed to implement each aspect.]

### 5.1 Initial Test-Idea Catalogs and Other Reference Sources

[Provide a listing of existing resources that will be referenced to stimulate the identification and selection of specific tests to be conducted. An example Test-Ideas Catalog is provided in the examples section of RUP.]

### 5.2 Testing Techniques and Types

#### 5.2.1 Data and Database Integrity Testing

The databases and the database processes should be tested as an independent subsystem. This testing should test the subsystems without the target-of-test's User Interface as the interface to the data. Additional research into the DataBase Management System (DBMS) needs to be performed to identify the tools and techniques that may exist to support the testing identified in the following table.

|                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Technique Objective    | [Exercise database access methods and processes independent of the UI so you can observe and log incorrectly functioning target behavior or data corruption.]                                                                                                                                                                                                                                                                                                                                                  |
| Technique              | [Invoke each database access method and process, seeding each with valid and invalid data or requests for data. Inspect the database to ensure the data has been populated as intended and all database events have occurred properly, or review the returned data to ensure that the correct data was retrieved for the correct reasons.]                                                                                                                                                                     |
| Oracles                | [Outline one or more strategies that can be used by the technique to accurately observe the outcomes of the test. The oracle combines elements of both the method by which the observation can be made and the characteristics of specific outcome that indicate probable success or failure. Ideally, oracles will be self-verifying, allowing automated tests to make an initial assessment of test pass or failure, however, be careful to mitigate the risks inherent in automated results determination.] |
| Required Tools         | [The technique requires the following tools: Test Script Automation Tool; base configuration imager and restorer; backup and recovery tools; installation-monitoring tools (registry, hard disk, CPU, memory, and so on); database SQL utilities and tools; data-generation tools]                                                                                                                                                                                                                             |
| Success Criteria       | [The technique supports the testing of all key database access methods and processes.]                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Special Considerations | [Testing may require a DBMS development environment or drivers to enter or modify data directly in the database.; Processes should be invoked manually.; Small or minimally sized databases (with a limited number of records) should be used to increase the visibility of any non-acceptable events.]                                                                                                                                                                                                        |

#### 5.2.2 Functional Testing

[Function testing of the target-of-test should focus on any requirements for test that can be traced directly to use cases or business functions and business rules. The goals of these tests are to verify proper data acceptance, processing, and retrieval, and the appropriate implementation of the business rules. This type of testing is based upon black box techniques; that is, verifying the application and its internal processes by interacting with the application via the Graphical User Interface (GUI) and analyzing the output or results. The following table identifies an outline of the testing recommended for each application.]

|                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Technique Objective    | [Exercise target-of-test functionality, including navigation, data entry, processing, and retrieval to observe and log target behavior.]                                                                                                                                                                                                                                                                                                                                                                       |
| Technique              | [Exercise each use-case scenario's individual use-cases flows or functions and features, using valid and invalid data, to verify that:; the expected results occur when valid data is used; the appropriate error or warning messages are displayed when invalid data is used; each business rule is properly applied]                                                                                                                                                                                         |
| Oracles                | [Outline one or more strategies that can be used by the technique to accurately observe the outcomes of the test. The oracle combines elements of both the method by which the observation can be mad, and the characteristics of specific outcome that indicate probable success or failure. Ideally, oracles will be self-verifying, allowing automated tests to make an initial assessment of test pass or failure, however, be careful to mitigate the risks inherent in automated results determination.] |
| Required Tools         | [The technique requires the following tools:; Test Script Automation Tool; base configuration imager and restorer; backup and recovery tools; installation-monitoring tools (registry, hard disk, CPU, memory, and so on); data-generation tools]                                                                                                                                                                                                                                                              |
| Success Criteria       | [The technique supports the testing of:; all key use-case scenarios; all key features ]                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Special Considerations | [Identify or describe those items or issues (internal or external) that impact the implementation and execution of function test.]                                                                                                                                                                                                                                                                                                                                                                             |

#### 5.2.3 Business Cycle Testing

[Business Cycle Testing should emulate the activities performed on the Project Name over time. A period should be identified, such as one year, and transactions and activities that would occur during a year's period should be executed. This includes all daily, weekly, and monthly cycles, and events that are date-sensitive, such as ticklers.]

|                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Technique Objective    | [Exercise target-of-test and background processes according to required business models and schedules to observe and log target behavior.]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Technique              | [Testing will simulate several business cycles by performing the following:; The tests used for target-of-test's function testing will be modified or enhanced to increase the number of times each function is executed to simulate several different users over a specified period.; All time or date-sensitive functions will be executed using valid and invalid dates or time periods.; All functions that occur on a periodic schedule will be executed or launched at the appropriate time.; Testing will include using valid and invalid data to verify the following:; The expected results occur when valid data is used.;The appropriate error or warning messages are displayed when invalid data is used.;Each business rule is properly applied.] |
| Oracles                | [Outline one or more strategies that can be used by the technique to accurately observe the outcomes of the test. The oracle combines elements of both the method by which the observation can be made, and the characteristics of specific outcome that indicate probable success or failure. Ideally, oracles will be self-verifying, allowing automated tests to make an initial assessment of test pass or failure, however, be careful to mitigate the risks inherent in automated results determination.]                                                                                                                                                                                                                                                 |
| Required Tools         | [The technique requires the following tools:; Test Script Automation Tool; base configuration imager and restorer; backup and recovery tools; data-generation tools]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Success Criteria       | [The technique supports the testing of all critical business cycles.]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Special Considerations | [System dates and events may require special support activities.; A business model is required to identify appropriate test requirements and procedures.]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

#### 5.2.4 User Interface Testing

User Interface (UI) testing verifies a user's interaction with the software. The goal of UI testing is to ensure that the UI provides the user with the appropriate access and navigation through the functions of the app. In addition we want to make sure that the user experience is the best possible, without having to spend too much time on it.

|                        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Login and Registration | The user should be able to log into his account through the login page. You can also register yourself with a DHBW-email address. After this process, you should land on your profile page.                                                                                                                                                                                                                                                                                                                     |
| Technique              | [Create or modify tests for each window to verify proper navigation and object states for each application window and object.]                                                                                                                                                                                                                                                                                                                                                                                  |
| Oracles                | [Outline one or more strategies that can be used by the technique to accurately observe the outcomes of the test. The oracle combines elements of both; the method by which the observation can be made and the characteristics of specific outcome that indicate probable success or failure. Ideally, oracles will be self-verifying, allowing automated tests to make an initial assessment of test pass or failure, however, be careful to mitigate the risks inherent in automated results determination.] |
| Required Tools         | [The technique requires the Test Script Automation Tool.]                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Success Criteria       | [The technique supports the testing of each major screen or window that will be used extensively by the end user.]                                                                                                                                                                                                                                                                                                                                                                                              |
| Special Considerations | [Not all properties for custom and third party objects can be accessed.]                                                                                                                                                                                                                                                                                                                                                                                                                                        |

#### 5.2.5 Performance Profiling

n/a, (hosted by Azure)

#### 5.2.6 Load Testing

n/a

#### 5.2.7 Stress Testing

n/a

#### 5.2.8 Volume Testing

n/a

#### 5.2.9 Security and Access Control Testing

- API-Tests for compliance with OAuth 2.0 standard.

#### 5.2.10 Failover and Recovery Testing

n/a

#### 5.2.11 Configuration Testing

n/a

#### 5.2.12 Installation Testing

- CI-generated Android-APK will be tested by installing it manually on a personal device.

## 6. Entry and Exit Criteria

### 6.1 Test Plan

#### 6.1.1 Test Plan Entry Criteria

The test plan is active for the next 3 months. New features will be covered. Existing features wont be tested for now.

#### 6.1.2 Test Plan Exit Criteria

The execution of the Test Plan is completed when all test run without errors, and the project is finished.

#### 6.1.3 Suspension and Resumption Criteria

The test plan is not supposed to be suspended. Therefore, there are no suspension and resumption criteria.

### 6.2 Test Cycles

##### 6.2.1 Test Cycle Entry Criteria

Every pushed commit on GitHub triggers the GitHub-Actions CI-Testing Pipeline.

##### 6.2.2 Test Cycle Exit Criteria

The test effort of a cycle is deemed sufficient when a build has been completed without failures and all unit tests are run successfully.

##### 6.2.3 Test Cycle Abnormal Termination

Occurring errors during the build terminate the test cycle. Then an email is sent to the person who made the changes that caused the test to fail.

## 7. Deliverables

## 7.1 Test Evaluation Summaries

n/a

## 7.2 Reporting on Test Coverage

Test coverage numbers for the frontend will be generated by the istanbul plugin running in a pipeline.

## 7.3 Perceived Quality Reports

n/a

## 7.4 Incident Logs and Change Requests

Our Azure Web Apps collect logs and error reports. These can be examined in case of an outage or unexpected behaviour.

## 7.5 Smoke Test Suite and Supporting Test Scripts

n/a

## 7.6 Additional Work Products

n/a

### 7.6.1 Detailed Test Results

Can be viewed in the browser using Karma and Jasmine when executing the test locally.
TODO: Link GitHub Action Flow results

### 7.6.2 Additional Automated Functional Test Scripts

n/a

### 7.6.3 Test Guidelines

n/a

### 7.6.4 Traceability Matrices

n/a

## 8. Testing Workflow

When a developer adds new functionality to the project, he also writes an appropriate Unit-Test covering the functionality. All unit tests are then automatically executed on a build. The developer can also test parts of the new code by running the tests from his IDE.

## 9. Environmental Needs

[This section presents the non-human resources required for the Test Plan.]

### 9.1 Base System Hardware

The following table sets forth the system resources for the test effort presented in this Test Plan.

| Resource        | Quantity | Name and Type                       |
| --------------- | -------- | ----------------------------------- |
| Database        | 1        | Azure SQL                           |
| DB Backend API  | 1        | C# API on Azure Web Server          |
| Web App DEV ENV | 1        | Angular Project on Azure Web Server |
| Auth Server     | 1        | Auth0 Instance                      |

### 9.2 Base Software Elements in the Test Environment

The following base software elements are required in the test environment for this Test Plan.

| Software Element Name | Type and Other Notes    |
| --------------------- | ----------------------- |
| Visual Studio Code    | Test Runner / IDE       |
| GitHub Actions        | CI/CD Pipeline Tool     |
| Jasmine               | UI/Unit testing library |
| Istanbul              | Coverage Library        |

### 9.3 Productivity and Support Tools

The following tools will be employed to support the test process for this Test Plan.

| Tool Category or Type             | Tool           |
| --------------------------------- | -------------- |
| Automated Test Execution          | GitHub Actions |
| Test Coverage Monitor or Profiler | Istanbul       |
| Project Management                | YouTrack       |
| DBMS tools                        | MS SQL SMS 18  |

### 9.4 Test Environment Configurations

The following Test Environment Configurations need to be provided and supported for this project.

| Configuration Name | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| Android            | Config for Tests that run in an Android (Ionic) Environment   |
| Browser            | Config for Tests that run in an Browser (Angular) Environment |

## 10. Responsibilities, Staffing, and Training Needs

### 10.1 People and Roles

This table shows the staffing assumptions for the test effort. The test will be conducted by mainly two people. This includes creating, running and evluating the tests. Therefore the table below will not explicitly filled.

| Role                        | Person   | Specific Responsbilities                                                   |
| --------------------------- | -------- | -------------------------------------------------------------------------- |
| Test Manager Frontend       | Ralph    | Ensures that testing is complete and conducted                             |
| Test Analyst Frontend       | -        | Selects what to test                                                       |
| Test Manager Backend        | Lukas    | Ensures that testing is complete and conducted                             |
| Test Analyst Backend        | -        | Selects what to test                                                       |
| Tester/Implementer/Designer | everyone | Implements and Executes the tests specified by the manager and the analyst |

### 10.2 Staffing and Training Needs

This section outlines how to approach staffing and training the test roles for the project.

[The way to approach staffing and training will vary from project to project. If this section is part of a Master Test Plan, you should indicate at what points in the project lifecycle different skills and numbers of staff are needed. If this is an Iteration Test Plan, you should focus mainly on where and what training might occur during the Iteration. Give thought to your training needs, and plan to schedule this based on a Just-In-Time (JIT) approach—there is often a temptation to attend training too far in advance of its usage when the test team has apparent slack. Doing this introduces the risk of the training being forgotten by the time it's needed. Look for opportunities to combine the purchase of productivity tools with training on those tools, and arrange with the vendor to delay delivery of the training until just before you need it. If you have enough headcount, consider having training delivered in a customized manner for you, possibly at your own site. The test team often requires the support and skills of other team members not directly part of the test team. Make sure you arrange in your plan for appropriate availability of System Administrators, Database Administrators, and Developers who are required to enable the test effort.]

## 11. Iteration Milestones

We want to keep over 30% code coverage.

## 12. Risks, Dependencies, Assumptions, and Constraints

see risk management: https://docs.google.com/spreadsheets/d/1falTIQkIQSTLZd_tVhuxKRq68DcY8aF4oG557i4VYQY/edit#gid=0

## 13. Management Process and Procedures

n/a

## 14. Metrics
We use SonarCloud to analyse our code.

The main metrics we want to focus on are cyclomatic complexity and cognitiv complexity. Cyclomatic complexitiy measures how many possible paths are there through a certain piece of code. The higher the cyclomatic complexity, the more test you will have to write. Cognitiv complexity determines how tricky a unit of code is to understand. This is important for everyone that will have to read and modify the code in the future. Refactoring will be used to improve these metrics. (If you are looking for a detailed example on how metrics improved our code, take a look at this blogpost: https://dhbw-experts.github.io/blog/2.8/)

