#import "/utils/todo.typ": TODO

= Introduction
// #TODO[
//   Introduce the topic of your thesis, e.g. with a little historical overview.
// ]
// E2E Testing - there exists tests for Artemis.
// Conversion into Playwright
// Parallelization
// Extending tests - exam and exercise tests
// Test coverage

Artemis is a sophisticated open-source software platform designed to enhance the educational experience for students and instructors at the Technical University of Munich and other academic institutions. The platform supports a broad array of educational activities, including course and exam organization, the creation and management of exercises, and the delivery of lectures @artemis. Its comprehensive feature set aims to streamline the interactive teaching and learning process for thousands of students attending a course, making it a valuable tool in modern education @interactivelearning.

The system’s scalability and active development are critical aspects of its design. Artemis is continually evolving, with contributions from a diverse group of developers who add new functionalities and improve existing ones. This dynamic growth necessitates robust end-to-end (E2E) testing to maintain the platform’s reliability and performance. E2E testing is crucial because it ensures that all components of the system work together seamlessly, mimicking real user scenarios from start to finish. By simulating actual user interactions, E2E tests verify that the user flows operate as intended, thereby preventing disruptions in the educational activities it supports.

In Artemis, E2E tests are implemented using the Cypress framework. Cypress is a modern testing tool that provides a fast, reliable, and efficient way to test web applications. It enables developers to write tests that can check the entire application workflow, from logging in to submitting assignments. This thorough testing approach helps identify and fix issues before they affect the end-users, ensuring a smooth and uninterrupted user experience. The continuous integration of E2E tests into the development process is essential for maintaining the high quality and reliability of the Artemis platform as it scales and adapts to the ever-changing educational landscape.


== Problem
// #TODO[
//   Describe the problem that you like to address in your thesis to show the importance of your work. Focus on the negative symptoms of the currently available solution.
// ]
Negative sides of Cypress
Lack of Parallelization
Lack of Tests in certain areas
Lack of Test coverage

Cypress is currently used in Artemis for end-to-end testing, but it has several notable drawbacks. It primarily supports Chromium-based browsers and Firefox, lacking native support for WebKit, which limits comprehensive cross-browser testing. Additionally, Cypress operates tests within a browser using a proxy server, which can introduce complications with security and network behaviors. Its test parallelization, while present, is not as seamless and effective, leading to longer execution times for large test suites.

Cypress also faces issues with handling iframes and multi-domain scenarios, often requiring complex workarounds. The framework's reliance on a single-page architecture can be limiting for testing applications with multiple tabs or windows. Furthermore, Cypress's automatic waiting mechanism, while useful, can lead to non-deterministic test results, making debugging more challenging. Another significant drawback is that its free cloud version mandates public projects, exposing any sensitive information contained within the tests. Previously, teams mitigated this issue by using “Sorry Cypress,” a self-hosted free alternative, but Cypress has discontinued support for it. These limitations present significant challenges and highlight the need for a more robust and secure testing framework for Artemis.

We are trying to achive high test coverage, but currently Artemis does not have a way to measure it. This problem makes it difficult to know which parts of the code are tested and which are not. This can lead to undetected bugs and issues, affecting the platform's reliability and performance.

Another problem is the lack of comprehensive test coverage in Artemis. While the platform has a substantial number of E2E tests, there are still areas that lack sufficient test coverage. Particularly exam worflows and different scenarios related to exercises are not covered by tests. These gaps can lead to undetected bugs and issues, affecting the platform's reliability and performance.


== Motivation
// #TODO[
//   Motivate scientifically why solving this problem is necessary. What kind of benefits do we have by solving the problem?
// ]
Using Playwright for End-to-End (E2E) testing develops more stable and capable tests. Playwright supports multiple browsers, including WebKit, providing comprehensive cross-browser testing. It addresses the flakiness issues seen with Cypress, ensuring more consistent test results.

Another important aspect of E2E testing is the speed of test execution. One way to accelerate the tests is parallel execution @paralleltesting. Playwright's efficient test parallelization significantly reduces execution times, making it suitable for large test suites. These improvements in stability and speed enhance our testing process, ensuring that any issues are identified and resolved quickly.

Creating an automated test coverage system provides valuable insights into the extent of our testing efforts. Tracking the percentage of the Artemis system covered by end-to-end tests identifies gaps and prioritizes areas that need more attention. This visibility encourages developers to write tests for new features, fostering a culture of quality and thoroughness. An automated coverage system ensures that our testing efforts remain consistently high and that we maintain a reliable and robust platform as Artemis continues to evolve.

Expanding tests in the exam and exercise modules increases the stability and reliability of these critical components. Thoroughly testing various scenarios and workflows detects and addresses potential problems early, before they affect users. This proactive approach improves current functionality and ensures that future updates and features maintain high quality. Comprehensive testing in these areas is essential for maintaining user trust and satisfaction, especially in high-stakes environments like online exams or live exercises.


== Objectives
// #TODO[
//   Describe the research goals and/or research questions and how you address them by summarizing what you want to achieve in your thesis, e.g. developing a system and then evaluating it.
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
    
The primary aim of this thesis is to enhance the testing framework and test coverage of the Artemis platform by migrating to a new testing framework, extending the existing test suite, and creating an automated test coverage system. The research objectives are detailed below.

=== Migrate from Cypress to Playwright

Compare the two frameworks: The initial objective is to conduct a comparative analysis of Cypress and Playwright. This comparison will focus on various aspects such as performance, ease of use, features, and compatibility with Artemis.

Implement Playwright in Artemis: Following the comparative analysis, the next step is to integrate Playwright into the Artemis platform. This involves setting up Playwright, configuring it for Artemis, and ensuring it operates seamlessly within the existing infrastructure.

Evaluate the benefits and drawbacks of Playwright: After implementation, the performance and effectiveness of Playwright will be evaluated. This evaluation will highlight the advantages and limitations of using Playwright compared to Cypress, providing a comprehensive understanding of the impact of the migration on Artemis.

=== Create an Automated Test Coverage System

Define user flows as test cases: The first step in this objective is to define user flows within Artemis as test cases. These flows represent typical user interactions and critical operations that need to be tested regularly.

Prepare a script that measures test coverage based on these flows: A script will be developed to measure the test coverage based on the defined user flows. This script will automate the process of determining which parts of the code are being tested and which are not.

Measure the test coverage of Artemis: Using the script, the current test coverage of Artemis will be measured. This measurement will provide a baseline understanding of the areas with sufficient coverage and those that require additional testing.

Identify areas missing tests: Determining the test coverage will help in identifying critical areas and workflows that lack sufficient tests. This identification process is crucial for ensuring comprehensive test coverage.

=== Extend Tests in the Exam and Exercise Modules

Develop new tests based on identified gaps: Based on the information obtained from the test coverage analysis, new test cases will be developed. These tests will target the critical scenarios and workflows within the exam and exercise modules that were previously under-tested.

Evaluate the impact of the new tests: The effectiveness of the newly developed tests will be evaluated by analyzing their ability to identify issues and improve the robustness of the exam and exercise modules. This evaluation will assess the overall enhancement in the quality assurance process.


== Outline
// #TODO[
//   Describe the outline of your thesis
// ]

Thesis starts with a review of related work. After that, we analyse the current functional and non-functional requirements of the system and set the goals for the thesis. We then present the system design and implementation details of the new testing framework and automated test coverage system. Next, we dive into the object design and practical implementation of the ideas mentioned. Then we discuss the results of the implementation, the impact of Playwright on Artemis testing setup and key learnings. Finally, we summarize the findings and provide recommendations for future work. Chapters of this thesis are structured as follows:

*Chapter 1: Introduction*

	•	Overview of the research area

	•	Motivation and background

	•	Structure of the thesis

*Chapter 2: Literature Review*

	•	Review of related work

	•	Analysis of existing testing frameworks and automated test coverage systems

	•	Identification of gaps in the current research

*Chapter 3: Requirements Analysis*

	•	Analysis of current functional requirements

	•	Analysis of current non-functional requirements

	•	Setting goals for the thesis

*Chapter 4: System Design*

	•	Overview of the new testing framework

	•	Design considerations and architecture

	•	Implementation details of the automated test coverage system

*Chapter 5: Object Design and Implementation*

	•	Detailed object design

	•	Practical implementation of the system design

	•	Discussion of development tools and technologies used

*Chapter 6: Results and Discussion*

	•	Results of the implementation

	•	Impact of Playwright on Artemis testing setup

	•	Analysis of key learnings and findings

*Chapter 7: Conclusion and Future Work*

	•	Summary of findings

	•	Recommendations for future work

	•	Final thoughts
