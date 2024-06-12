#import "/utils/todo.typ": TODO

= Introduction
// #TODO[
//   Introduce the topic of your thesis, e.g., with a little historical overview.
// ]
// E2E Testing - there exists tests for Artemis.
// Conversion into Playwright
// Parallelization
// Extending tests - exam and exercise tests
// Test coverage

Artemis is a sophisticated open-source software platform that aims to improve the educational experience of students and teachers at the Technical University of Munich and other academic institutions. The platform covers a wide range of educational activities, such as course and test organisation, exercise development and management, and lecture delivery through @artemis. Its extensive feature set intends to simplify the interactive teaching and learning process for thousands of students enrolled in a course, making it an important instrument in modern education @interactivelearning.

Scalability and active development are essential design considerations. Artemis is always evolving, with contributions from numerous developers who add new features and improve current ones. Consistently growing software systems as such require comprehensive end-to-end (E2E) testing for the platform's dependability and performance. E2E testing is critical because it guarantees that all system components function together seamlessly, simulating real-world user scenarios from beginning to end. E2E tests ensure that user flows work properly by mimicking actual user interactions, preventing disruptions in the educational activities they support.

Artemis uses the Cypress framework to implement E2E testing. Cypress is a modern testing tool that allows you to test web applications quickly, reliably, and efficiently. It allows developers to create tests that check the full application lifecycle, from logging in to submitting exercises. This extensive testing strategy helps detect and resolve issues before they effect end users, resulting in a seamless and uninterrupted user experience. The continual inclusion of E2E tests into the development process is critical for the Artemis platform's high quality and dependability as it scales and adapts to the ever-changing educational environment.


== Problem
// #TODO[
//   Describe the problem that you like to address in your thesis to show the importance of your work. Focus on the negative symptoms of the currently available solution.
// ]
// Negative sides of Cypress
// Lack of Parallelization
// Lack of Tests in certain areas
// Lack of Test coverage

Cypress is currently used in Artemis for end-to-end testing but has several notable drawbacks. It primarily supports Chromium-based browsers and Firefox, lacking native support for WebKit, which limits comprehensive cross-browser testing. Additionally, Cypress operates tests within a browser using a proxy server, which can introduce complications with security and network behaviors. It has no test parallelization built in and relies on its cloud-based services or third-party solutions for parallel execution, which can be costly and complex to set up.

Cypress also faces issues handling iframes and multi-domain scenarios, often requiring complex workarounds. The framework's reliance on a single-page architecture can be limiting when testing applications with multiple tabs or windows. Another significant drawback is that its free cloud version mandates public projects, exposing any sensitive information contained within the tests. Previously, teams mitigated this issue by using “Sorry Cypress,” a self-hosted free alternative, but Cypress has discontinued its support. These limitations present significant challenges and highlight the need for a more robust and secure testing framework for Artemis.

Achieving high test coverage is another challenge for Artemis, as the platform currently lacks a way to measure it. This issue makes it difficult to determine if all system features and user flows are tested, potentially leading to undetected bugs and features that don't function as intended.

Additionally, while the Artemis platform has a substantial number of E2E tests, some areas still lack sufficient coverage. In particular, exam workflows and various exercise-related scenarios have untested areas that require extending E2E tests. These areas can face various issues, negatively impacting the platform's reliability and performance.


== Motivation
// #TODO[
//   Motivate scientifically why solving this problem is necessary. What kind of benefits do we have by solving the problem?
// ]
Using Playwright for End-to-End (E2E) testing produces more consistent and capable results. Playwright supports a variety of browser engines, including WebKit, and offers full cross-browser testing. It is less prone to flaky tests than Cypress by design, resulting in more consistent test results.

Another important feature of E2E testing is the speed of test execution. Parallel execution is one approach to speed up the testing process @paralleltesting. Playwright's effective test parallelization considerably shortens execution times, making it ideal for big test suites. These enhancements to stability and speed improve our testing methodology, ensuring that any issues are recognised and handled fast.

Creating an E2E test coverage system gives vital information about the scope of our testing efforts. Tracking the amount of the Artemis system covered by end-to-end tests reveals gaps and prioritises areas that require additional tests. It also encourages developers to write tests for new features, establishing a culture of quality and thoroughness. An automatic coverage approach guarantees that our testing efforts are constantly high, and that Artemis remains a dependable and resilient platform as it evolves.

Including more tests in the exam and exercise modules improves the stability and reliability of these essential components. Thoroughly testing multiple scenarios and user flows identifies and addresses any issues before they affect users. Consequently, it enhances current functionality while ensuring that future updates and features maintain a high quality. Comprehensive testing in these areas is critical for keeping user trust and satisfaction, particularly in high-stakes settings such as online exams or live exercises.


== Objectives
// #TODO[
//   Describe the research goals and/or research questions and how you address them by summarizing what you want to achieve in your thesis, e.g., developing a system and then evaluating it.
// ]

// 1. Migrate from Cypress to Playwright:
//     - Compare the two frameworks
//     - Implement Playwright in Artemis
//     - Evaluate the benefits and drawbacks of Playwright
// 3. Extend tests in the exam and exercise modules:
//     - Identify critical scenarios and workflows
//     - Develop new tests for these areas
//     - Evaluate the impact of the new tests
// 2. Create an automated test coverage system:
//     - Define user flows as test cases
//     - Prepare a script that measures test coverage based on these flows
//     - Measure the test coverage of Artemis
//     - Improve test coverage in critical areas
    
This thesis aims to enhance the testing framework and test coverage of the Artemis platform by migrating to a new testing framework, creating an automated test coverage system, and extending the existing test suite based on the areas missing tests. The research objectives are detailed below.

=== Migrate from Cypress to Playwright

Compare the two frameworks. The initial goal is to conduct a comparison of Cypress and Playwright. This comparison will look at performance, usability, features, and compatibility with Artemis.

Implement Playwright in Artemis: After the comparative analysis, the next step is to integrate Playwright into the Artemis platform. This includes installing Playwright, configuring it for Artemis, and ensuring it works seamlessly with the existing infrastructure by creating CI build plans.

Move existing E2E tests from Cypress to Playwright: The migration process will include converting all E2E tests for the Artemis course, lecture, exam, and exercise modules, as well as the platform's authentication process. It will be necessary to convert all page object models, end-to-end test suites, fixtures, and helper commands to Playwright.

Evaluate the advantages and disadvantages of Playwright: Following the implementation, thesis will evaluate the performance and effectiveness of Playwright. This evaluation will highlight the benefits and drawbacks of using Playwright over Cypress, providing a complete picture of the migration's impact on Artemis.

=== Develop an automated test coverage system.

Define user flows as test cases: The first step towards this goal is to define user flows in Artemis as test cases. These flows represent typical user interactions and features that require regular testing.

Develop a script that measures test coverage based on these flows: The E2E test coverage is measured using a script that takes into account the user flows defined in the previous step as well as existing test suites. This script automates the process of determining which system components are not covered by E2E tests.

Measure Artemis' test coverage: The script is used to determine Artemis' current test coverage. This measurement should provide a baseline understanding of which areas have adequate coverage and which require further testing.

Identify areas that are missing tests: Determining coverage allows you to identify critical areas and workflows that do not have enough tests. This identification process is critical to ensuring complete test coverage.

=== Extend tests in the exam and exercise modules.

Create new tests based on identified gaps: The test coverage analysis provides information for the creation of new test cases. These tests focus on critical scenarios and workflows within the exam and exercise modules that were previously under-tested.

Evaluate the impact of the new tests: The effectiveness of the newly developed tests is assessed by examining their ability to identify problems and strengthen the exam and exercise modules. This evaluation measures the overall improvement in the quality assurance process.


== Outline
// #TODO[
//   Describe the outline of your thesis
// ]

The thesis starts with a review of related work. Following that, we examine the system's current functional and non-functional requirements and establish the thesis objectives. Later, we discuss the system design and implementation details of the Playwright testing framework and automated test coverage system. Following that, we examine the object design and practical application of the concepts mentioned above. We discuss the implementation results, the Playwright's influence on Artemis' testing setup, and key takeaways. Finally, we summarise the results and make recommendations for future research. The chapters of this thesis are as follows:

*Chapter 1: Introduction*

  • Overview of the research area

  • Motivation and background

  • Structure of the thesis

*Chapter 2: Literature Review*

  • Review of related work

  • Analysis of existing testing frameworks and test coverage methods

  • Identification of gaps in the current research

*Chapter 3: Requirements Analysis*

  • Analysis of current functional requirements

  • Analysis of current non-functional requirements

  • Setting goals for the thesis

*Chapter 4: System Design*

  • Overview of the new testing framework

  • Design considerations and architecture

  • Implementation details of the automated test coverage system

*Chapter 5: Object Design and Implementation*

  • Detailed object design

  • Practical implementation of the system design

  • Discussion of development tools and technologies used

*Chapter 6: Results and Discussion*

  • Results of the implementation

  • Impact of Playwright on Artemis testing setup

  • Analysis of key learnings and findings

*Chapter 7: Conclusion and Future Work*

  • Summary of findings

  • Recommendations for future work

  • Final thoughts

