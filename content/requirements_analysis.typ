#import "/utils/todo.typ": TODO

= Requirements Analysis
// #TODO[
//   This chapter follows the Requirements Analysis Document Template in @bruegge2004object. Important: Make sure that the whole chapter is independent of the chosen technology and development platform. The idea is that you illustrate concepts, taxonomies and relationships of the application domain independent of the solution domain! Cite @bruegge2004object several times in this chapter.
// ]
In this chapter, we outline the results of our requirement analysis. In Section 3.1, we set the main goals: to migrate to the Playwright testing framework for better performance and reliability, to find ways to determine test coverage, and to improve test coverage, especially for exam and exercise modules. Section 3.2 reviews the current E2E testing system, which uses the Cypress framework, highlighting its current state and gaps. Finally, Section 3.3 lists the functional and non-functional requirements for the new and improved testing system. This chapter follows the methods of Prof. Dr. Bernd Brügge and Allen H. Dutoit @bruegge2004object.

== Overview
// #TODO[
//   Provide a short overview about the purpose, scope, objectives and success criteria of the system that you like to develop.
// ]
The main goal of this section is to outline the current test suite based on Cypress testing framework, its shortcomings and potentials of improvement. It is being compared to Playwright framework to determine the best approach for the Artemis platform. The new system should be able to provide better performance, reliability and long-term maintainability.

Another goal is to find ways of calculating an E2E test coverage and determine it for the Artemis. The new system should be able to provide a way to measure the test coverage and provide meaningful information about parts of the system that are not covered by the tests. This system should be scalable, easy to maintain by developers and provide meaningful insights about the test coverage.

Determining the test coverage, we want to improve it for the Artemis platform, especially for the exam and exercise modules. The updated test suite should cover more user workflows and edge cases to ensure the reliability of the exercise and exam modules. Extending test suite should help us reach the test coverage goals and improve the overall quality of the Artemis platform.

== Current System
// #TODO[
//   This section is only required if the proposed system (i.e. the system that you develop in the thesis) should replace an existing system.
// ]
Currently, the E2E testing system of Artemis is based on Cypress and includes tests developed by Julian Hainzlschmid, Robert Schauer [JH21], Florian Gareis [FG325] and other developers contributing to Artemis platform. These tests cover the course, exam, exercise, and lecture related scenarios. Course related tests cover the managing of courses, different communication methods and scenarios and searching for exercises of a course. Exam tests are testing both standard and test exams related to their management, participation of students on them, exam assessment by tutors and test runs by instructors before conducting them. Exercise tests are aimed at covering all kinds of exercises supported by Artemis, including text and modeling exercises, quizes, programming and file upload exercises. These test check for the regression and functionality of managing these exercises, participating in them by students and their assessments by tutors and instructors. Managing lectures is covered by corresponding tests as well.

Additionally to this test suite, Sorry Cypress has been implemented for recording the tests to have a better insight into them in case of failures. It also features a possibility to run tests in parallel for better performance. However, these benefits have been undermined by the decision of Cypress deprecating support for third-party cloud services, which included stopping support of Sorry Cypress in their future versions. Following this section, we will introduce an idea of replacing current setup with Playwright, which provides better test performance thanks to directly controlling the DOM and features like test parallelization included by default. Furthermore, we will improve the current test suites by determining test coverage and developing new tests to improve the coverage.

== Proposed System
// #TODO[
//   If you leave out the section “Current system”, you can rename this section into “Requirements”.
// ]

=== Functional Requirements
// #TODO[
//   List and describe all functional requirements of your system. Also mention requirements that you were not able to realize. The short title should be in the form “verb objective”

//   - FR1 Short Title: Short Description. 
//   - FR2 Short Title: Short Description. 
//   - FR3 Short Title: Short Description.
// ]
Interactions between the system and its outside environment are described by functional requirements @bruegge2004object. These requirements are the basis for the system design and implementation. The following functional requirements are derived from the goals set in the Overview section.

FR1 *Migrate current E2E test setup:* We migrate the current test setup from Cypress to Playwright to improve the performance and reliability of the test suite. This includes setting up the Playwright framework, creating CI build plans for running the tests over all branches of the Artemis repository, and rewriting the existing tests.

FR2 *Prepare method for E2E test coverage:* To expand the current E2E test suite, we need to determine the areas missing tests with the help of test coverage. We consider existing methods for calculating test coverage and choose the most suitable one for our goals.

FR3 *Calculate E2E test coverage of Artemis:* Using the method chosen in FR2, we calculate the test coverage of the Artemis platform. This includes determining the percentage of the code covered by the tests and identifying areas that are not covered by the tests.

FR4 *Expand E2E test suite for test exams:* While many aspects of the exam subsystem are already covered by the tests, some of them only cover standard exams, not the test exams. We prepare new test suite for managing exam students for the test exams.

FR5 *Extend programming exercise participation E2E tests:* The current test suite contains tests for participating in programming exercises using online code editor for several programming languages. We extend these tests to cover all programming languages supported by Artemis. Moreover, we add alternative participation method using Git for complete coverage of the programming exercise participation scenarios.

FR6 *Add E2E tests for exam results:* We test the user flow of an instructor checking exam statistics after the exam has been conducted. From the perspective of students, we test the exam result page for correct display of the results and grade summary.

FR7 *Expand quiz E2E tests:* different batch modes, exporting: Quiz exercise participations are tested for the live participation with manual start. We extend these tests to cover scheduled, batched and individual participations, as well as the quiz practice mode.

FR8 *Develop E2E tests for exam announcements:* announcement messages, working time change: We develop tests for the announcements sent to students during the exam conduction. The announcements we test for are the remaining time of the exam, changes in the exercise and a custom message sent by the instructor.


=== Nonfunctional Requirements
// #TODO[
//   List and describe all nonfunctional requirements of your system. Also mention requirements that you were not able to realize. Categorize them using the FURPS+ model described in @bruegge2004object without the category functionality that was already covered with the functional requirements.

//   - NFR1 Category: Short Description. 
//   - NFR2 Category: Short Description. 
//   - NFR3 Category: Short Description.

// ]
All other aspects that are not related to functional behavior of the system are described by nonfunctional requirements @bruegge2004object. These aspects contribute to the overall quality of the system. We categorize them using the URPS model below.

NFR1 *Usability:* The new E2E test suite should be easy to run, visually monitor the test runs and investigate the results. Test failures should be clearly expressed, traceable and easy to debug. Configuration for running the tests should be minimal and well documented.

NFR2 *Reliablity:* For E2E tests to be effective, they need to correctly check for the regressions and succeed or fail for correct reasons. The test suite should be stable in its results, always providing the same outcome for the same test run. The tests should be able to run in parallel without interfering with each other, having isolated contexts. The test suite should successfully run on different environments, including local development machines and CI servers.Different browsers engines and Artemis setups must be supported by the tests.

NFR3 *Performance:* The E2E test suite should run in a reasonable time frame, not taking too long to complete to give developers an insight about their changes as soon as possible. The tests should take advantage of parallelization methods to speed up their execution. By switching to Playwright testing framework and with the help of parallelization, the test suite should have performance improvements over the current setup and take less than 60 minutes on average to finish.

NFR4 *Supportability:* Newly developed tests should reuse existing page objects and introduce new ones that contain common actions that can be reused in other tests. Detailed documentation about developing new tests in Playwright, including best practices used in Artemis E2E test suite should be prepared to ensure the maintainability of the test suite.

// == System Models
// #TODO[
//   This section includes important system models for the requirements analysis.
// ]


// === Scenarios
// #TODO[
//   If you do not distinguish between visionary and demo scenarios, you can remove the two subsubsections below and list all scenarios here.

//   *Visionary Scenarios*
//   Describe 1-2 visionary scenario here, i.e. a scenario that would perfectly solve your problem, even if it might not be realizable. Use free text description.

//   *Demo Scenarios*
//   Describe 1-2 demo scenario here, i.e. a scenario that you can implement and demonstrate until the end of your thesis. Use free text description.
// ]

// === Use Case Model
// #TODO[
//   This subsection should contain a UML Use Case Diagram including roles and their use cases. You can use colors to indicate priorities. Think about splitting the diagram into multiple ones if you have more than 10 use cases. *Important:* Make sure to describe the most important use cases using the use case table template (./tex/use-case-table.tex). Also describe the rationale of the use case model, i.e. why you modeled it like you show it in the diagram.

// ]

// === Analysis Object Model
// #TODO[
//   This subsection should contain a UML Class Diagram showing the most important objects, attributes, methods and relations of your application domain including taxonomies using specification inheritance (see @bruegge2004object). Do not insert objects, attributes or methods of the solution domain. *Important:* Make sure to describe the analysis object model thoroughly in the text so that readers are able to understand the diagram. Also write about the rationale how and why you modeled the concepts like this.

// ]

// === Dynamic Model
// #TODO[
//   This subsection should contain dynamic UML diagrams. These can be a UML state diagrams, UML communication diagrams or UML activity diagrams.*Important:* Make sure to describe the diagram and its rationale in the text. *Do not use UML sequence diagrams.*
// ]


// === User Interface
// #TODO[
//   Show mockups of the user interface of the software you develop and their connections / transitions. You can also create a storyboard. *Important:* Describe the mockups and their rationale in the text.
// ]
