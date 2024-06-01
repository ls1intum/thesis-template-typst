#import "/utils/todo.typ": TODO

#set heading(numbering: none)
= Abstract
  This thesis seeks to improve the efficiency and scope of end-to-end (E2E) testing for software systems. It focuses on refining testing to enhance reliability and performance, optimizing execution times, and ensuring adaptability across different configurations. The study will investigate change impact analysis and dependency evaluation to target tests relevant to specific changes, as well as address the challenge of measuring test coverage within Artemis as a primary example.

#set heading(numbering: "1.1")
= Introduction
  Testing of complex software systems plays a pivotal role in maintaining the quality and stability during frequent releases, acting as a safeguard against potential issues. Artemis serves as a prime example of such intricate systems. It is an interactive learning platform, encompassing a wide array of components such as exams, exercises, grading, analytics, and more @artemis. The platform's ongoing evolution calls for a dynamic and thorough testing methodology that addresses both technical functionality and user experience. End-to-End (E2E) tests play a crucial role in this goal by capturing issues that emerge during real-world usage. #footnote[https://blog.american-technology.net/what-is-end-to-end-testing/]

  For its E2E testing, Artemis employs Cypress testing framework used by applying the Page Object Model (POM) pattern, as shown in @uml. This combination offers loose coupling between test cases and application under test @testswithpom. Furthermore, Sorry Cypress library is used for detailed analytics and effective debugging by recording test executions. This comprehensive approach to E2E testing is integral to ability of Artemis to adapt and maintain high standards of quality and user experience in a rapidly evolving software landscape.

  #figure(image("../figures/pom_uml.png", width: 70%), caption: [
    UML diagram showcasing POM testing architecture
  ]) <uml>


= Problem
  Current E2E testing setup of Artemis does not cover numerous usage scenarios and some of the possible configurations. This limitation affects both developers and testers, undermining their ability to ensure reliability across various environments, consequently affecting end-users. In particular, scenarios like adding an exam by importing, checking exam test runs by instructors and tutors, assessment of test exams are some of the features that are not tested. Many newly added features such as Iris - AI based virtual tutor, collaboration in diagrams, course learning paths and competencies also need proper testing from user perspective with the help of E2E tests.

  Primary issue that arises during E2E testing process is flakiness, which undermines the reliability of testing by introducing erratic behaviors and significantly decreases developers' productivity due to unexpected failing builds. This unpredictable behavior makes developers to spend additional time identifying whether a failure is due to their code changes or flaky tests @Lam2019Root. Some tests are prone to fail depending on the order of execution. We can also come across to tests that make use of fixed-time delays for awaiting certain action and these tests sometimes fail due to test servers executing that action slower than expected. Another important issue is the extensive duration required for some of the tests to complete. Long testing period directly impacts developers, as it leads to longer waiting times for feedback from continuous integration/continuous deployment (CI/CD) pipelines. Tests are executed sequentially, which is not efficient for lightweight tests.

  Another concern is the inefficiency of executing the entire test suite for partial changes to the application. This practice consumes unnecessary computational resources and causes delays for developers, as they wait for the results of tests that may be irrelevant to recent changes. In fact, for a project with many separate modules such as Artemis, majority of code merges concern only a small portion of code base. Having an understanding in which tests involve changed components would be useful, but there is an evident lack of clarity and proper methods regarding the test coverage in the context of E2E testing. #footnote[https://prodperfect.com/blog/end-to-end-testing/preventing-human-burnout-a-meaningful-approach-to-measuring-e2e-test-coverage/]


= Motivation
  For an open-source project that involves many developer contributions, having extensive testing is especially of importance. Making sure all important features and user scenarios are captured by E2E tests will make sure none of the changes become breaking from user perspective. For an interactive system like Artemis, where there is a lot of user interaction, reliability is particularly important @thayer1975software. Adding more diverse configurations for testing will ensure consistently good user experience after each change. On the other hand, E2E tests are resource hungry and we have to make sure they run as much efficiently as possible. Optimized tests give faster results, which results in faster iterations in developing software, as developers spend more time developing and less time waiting for tests to finish. 

  Developers get much more reliable evaluation of the changes they made with stable test results after elimination of flakiness. Stable test results will contribute to smoother development workflows, as developers can rely more confidently on test outcomes to validate code changes, leading to faster and more efficient development cycles @Ziftci2020De-Flake.

  Reducing costs is an important motivation for saving compute resources, which becomes even more significant for open source projects or porjects that have limited funding. That's why, running only change-related tests would save plenty of resources in a long run @Baral2021Self.

#pagebreak(weak: true)

= Objective
  Our main objectives are to expand the E2E tests of Artemis, optimization of test execution for greater efficiency, and the introduction of advanced methodologies for change impact analysis. 

  == Extend E2E Tests

  One of the main goals of the thesis will be to extend the test suite to reliably cover the critical parts of software's functionality, while testing in different configurations. Considering possible ways to calculate test coverage of E2E tests and using them will come in handy in determining user journeys that are not being tested.

  === Test Exams and Courses

  Exams have become and essential part of Artemis and their reliability is especially critical. We will work on covering test exam workflows that include adding an exam by importing, checking exam test runs by instructors and tutors, and assessment of test exams. 

  === Tests for New Features

  Artemis is constantly evolving in big steps and it is important to make sure newly added features work seamlessly without causing issues for users. We will test setup of Iris, configuration of adaptive learning that includes competencies and learning paths, collaborative work on Apollon - diagram creator and many more.

  === Tests for Updated Design

  To improve the user experience of Artemis, a new user interface is under development and rolling it out to users will bring significant challenges. All the UI/UX changes are expected to require changes in many existing E2E tests. We will adjust current E2E tests and add new ones to cover the new user paths these updates will offer.

  == Optimize Tests and Eliminate Flakiness

  While extending test suite, it is important to always keep under control and improve test execution times and resource consumption. We will make use of various methods to optimize existing tests to run faster and more efficiently without compromising effectiveness. Enabling parallel test execution will be one of the significant changes. To make sure these tests give reliable results, we will analyze existing and newly developed tests for flakiness and eliminate them as much as possible. To achieve all these improvements, playwright - a modern open source testing framework will be considered as a potential alternative to Cypress.

  == Change Impact Analysis

  Our final objective is to prepare a strategy for executing tests that are specifically relevant to recent changes in the pull request. We will consider existing methodologies, determine their advantages and shortcomings, and try to come up with sophisticated approach that we can apply in Artemis.


= Schedule
  Thesis lasts from 15th of December, 2023 to 15th of June, 2024.

  Research will be conducted in sprints of length 2-4 weeks as planned below:

  * Sprint 1 (December 15th - January 11th): *

  - Familiarize myself with existing test setup.
  - Setup playwright for e2e tests.

  * Sprint 2 (January 12th - January 25th): *

  - Prepare CI pipelines for test execution.
  - Implement parallelization in test execution process.

  * Sprint 3 (January 26th - February 22nd): *

  - Evaluate and convert current testing setup to playwright.
  - Activate tests in playwright for all branches.

  * Sprint 4 (February 23rd - March 1st): *

  - Explore and integrate advanced methodologies for measuring test coverage.
  - Identify and record areas or user journeys currently lacking E2E testing within the Artemis platform.

  * Sprint 5 (March 2nd - March 29th): *

  - Extend E2E tests for exams.
  - Extend E2E tests for courses.

  * Sprint 6 (March 30th - April 26th): *

  - Prepare E2E tests for adaptive learning.
  - Prepare E2E tests for newly added features.

  * Sprint 7 (April 27th - May 10rd): *

  - Devise strategies for identifying flaky tests within the current test suite.
  - Address and fix identified flaky tests to ensure consistency and reliability.

  * Sprint 8 (May 11th - May 24th): *

  - Conduct research on methodologies for change impact analysis.
  - Apply devised strategy in Artemis.

  * Sprint 9 (May 25th - June 14th): *

  - Adjust E2E tests based on updated design.
  - Reassess test coverage after implementation of new strategies and tests.
