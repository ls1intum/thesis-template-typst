// Note:
//   1. *paragraph:* What is the motivation of your thesis? Why is it interesting from a scientific point of view? Which main problem do you like to solve?
//   2. *paragraph:* What is the purpose of the document? What is the main content, the main contribution?
//   3. *paragraph:* What is your methodology? How do you proceed?

Artemis is a software tool for education of students featuring different features for managing courses, lectures, exams with a huge array of features. Such an intricate systems require proper testing to ensure stability. End-to-end tests are one of the most comprehensive ways of detecting issues beforehand by simulating different user journeys. While preparing E2E tests, it is important to be aware of the test coverage of the system, especially considering that there is still no clear way of determining test coverage in such tests. Another important topic concerning E2E tests is their execution time. Developers need the results of tests to ensure that the system is stable after the changes they have introduced. Therefore optimizing tests to save time and resources becomes a viable topic, especially while the number of tests are growing linearly to the number of new features implemented.

This thesis introduces Playwright in the place of Cypress for E2E testing of Artemis due to the advantages of Playwright on features and performance. Playwright is an open source E2E testing tool developed by Microsoft. The thesis will compare these two tools in terms of performance and features.

With migration into Playwright, we get the opportunity of running tests in parallel. This thesis will also focus on the execution time of E2E tests, comparing the execution time of Artemis E2E tests before and after parallelization.

Lastly, we will discover the ways of determining test coverage in E2E tests and analyse E2E test coverage of Artemis. We will consider different approaches and try to find the one most suitable for Artemis.