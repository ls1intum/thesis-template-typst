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

Artemis is a sophisticated open-source software platform designed to enhance the educational experience of students and instructors at the Technical University of Munich and various other academic institutions. The platform supports a broad array of educational activities, including course and exam organization, the creation and management of exercises, and the delivery of lectures @artemis. Its comprehensive feature set aims to streamline an interactive teaching and learning process of thousands of students attending a course, making it a valuable tool in modern education @interactivelearning.

The system's scalability and active development are critical aspects of its design. Artemis is continually evolving, with contributions from a diverse group of developers who add new functionalities and improve existing ones. This dynamic growth necessitates robust end-to-end (E2E) testing to maintain the platform's reliability and performance. E2E testing is crucial because it ensures that all components of the system work together seamlessly, mimicking real user scenarios from start to finish. By simulating actual user interactions, E2E tests verify that the user flows operate as intended, thereby preventing disruptions in the educational activities it supports.

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

Another problem is the lack of comprehensive test coverage in Artemis. While the platform has a substantial number of E2E tests, there are still areas that lack sufficient test coverage. Particularly exam worflows and different scenarios related to exercises are not covered by tests. These gaps can lead to undetected bugs and issues, affecting the platform's reliability and performance.

We are trying to achive high test coverage, but currently Artemis does not have a way to measure it. This problem makes it difficult to know which parts of the code are tested and which are not. This can lead to undetected bugs and issues, affecting the platform's reliability and performance.


== Motivation
// #TODO[
//   Motivate scientifically why solving this problem is necessary. What kind of benefits do we have by solving the problem?
// ]
Using Playwright for end-to-end testing develops more stable and capable tests. Playwright supports multiple browsers, including WebKit, providing comprehensive cross-browser testing. It addresses the flakiness issues seen with Cypress, ensuring more consistent test results. Playwright’s efficient test parallelization significantly reduces execution times, making it suitable for large test suites. These improvements in stability and speed enhance our testing process, ensuring that any issues are identified and resolved quickly.

Expanding tests in the exam and exercise modules increases the stability and reliability of these critical components. Thoroughly testing various scenarios and workflows detects and addresses potential problems early, before they affect users. This proactive approach improves current functionality and ensures that future updates and features maintain high quality. Comprehensive testing in these areas is essential for maintaining user trust and satisfaction, especially in high-stakes environments like online exams.

Creating an automated test coverage system provides valuable insights into the extent of our testing efforts. Tracking the percentage of the Artemis system covered by end-to-end tests identifies gaps and prioritizes areas that need more attention. This visibility encourages developers to write tests for new features, fostering a culture of quality and thoroughness. An automated coverage system ensures that our testing efforts remain consistently high and that we maintain a reliable and robust platform as Artemis continues to evolve.



== Objectives
#TODO[
  Describe the research goals and/or research questions and how you address them by summarizing what you want to achieve in your thesis, e.g. developing a system and then evaluating it.
]
Improve speed of tests with parallelization
Improve reliability of Artemis with more tests
Measure and improve test coverage to ensure that all parts of Artemis are tested

1. Migrate from Cypress to Playwright:
    - Compare the two frameworks
    - Implement Playwright in Artemis
    - Evaluate the benefits and drawbacks of Playwright
2. Extend tests in the exam and exercise modules:
    - Identify critical scenarios and workflows
    - Develop new tests for these areas
    - Evaluate the impact of the new tests
3. Create an automated test coverage system:
    - Define user flows as test cases
    - Prepare a script that measures test coverage based on these flows
    - Measure the test coverage of Artemis
    - Improve test coverage in critical areas
    
(maybe swap 2 and 3)


== Outline
#TODO[
  Describe the outline of your thesis
]

