#import "/utils/todo.typ": TODO

= Related Work
// #TODO[
//   Describe related work regarding your topic and emphasize your (scientific) contribution in contrast to existing approaches / concepts / workflows. Related work is usually current research by others and you defend yourself against the statement: “Why is your thesis relevant? The problem was al- ready solved by XYZ.” If you have multiple related works, use subsections to separate them.
// ]

// Open to improvements

Comprehensive guide to setting up Cypress and developing E2E tests for it can be found in the book by Mwaura @mwaura2021end. The book covers the basics of E2E testing, including the setup of Cypress, writing tests, and running them. It also discusses advanced topics such as testing strategies, debugging, and CI/CD integration. While the book is a valuable resource for developers looking to get started with E2E testing using Cypress, our thesis will cover the setup process of Playwright and best practices for developing end to end tests with it. We highlight the differences between Playwright and Cypress, and demonstrate how to migrate an existing test suite to Playwright.

In their article, Utomo et al. mention the usage of Playwright for end to end testing of a web application in the example of a crowdfunding web platform @utomo2023implementation. The resulting product achieved a high level of user satisfaction and automated end to end testing also contributed to this success. The article emphasises their usage of different browser engines Playwright supports and fast test execution times. Despite their mention of a few Playwright features and benefits, the article does not provide a comprehensive research on the features of Playwright. Our thesis will provide a detailed information on the features of Playwright, their benefits and a comparison with other testing frameworks.

Test coverage is critical for ensuring that an E2E test suite adequately verifies all aspects of a system. In their paper, Song and Taibi discuss the challenges and methodologies for achieving high test coverage in microservice architectures. They propose automated metrics for evaluating E2E and API test coverage, offering tools and case studies to demonstrate how these metrics can be applied in real-world systems. Their findings suggest that combining E2E and API testing can significantly enhance coverage, ensuring more robust and reliable software systems.

// Add as a bibtex reference
Song, E., & Taibi, D. (2024). Test Coverage in Microservice Systems: An Automated Approach to E2E and API Test Coverage Metrics. Electronics, 13(10), 1913. DOI: 10.3390/electronics13101913
