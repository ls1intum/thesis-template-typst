#import "/utils/todo.typ": TODO

= System Design
// #TODO[
//   This chapter follows the System Design Document Template in @bruegge2004object. You describe in this chapter how you map the concepts of the application domain to the solution domain. Some sections are optional, if they do not apply to your problem. Cite @bruegge2004object several times in this chapter.
// ]
In this section, we introduce the system design for migrating our current end-to-end (E2E) test suite to the Playwright testing framework. Our approach includes identifying areas lacking test coverage through advanced test coverage techniques and expanding the existing suite to encompass more user workflows and functionalities. To illustrate the capabilities of our proposed system, we present visionary scenarios and use cases, which help formulate both the analysis object model and the dynamic model.

// Provide graph of test coverage based on user workflows


== Overview
// #TODO[
//   Provide a brief overview of the software architecture and references to other chapters (e.g. requirements analysis), references to existing systems, constraints impacting the software architecture..
// ]
The system design for migrating our current end-to-end (E2E) test suite to the Playwright testing framework involves several key components. These components include identifying areas lacking test coverage, expanding the existing suite, incorporating a new debugging service, and presenting visionary scenarios and use cases. By addressing these aspects, we aim to enhance the stability and structure of the tests while improving the user interface.

Tests are based on Page Object Model (POM) design pattern that enables the separation of test scripts from the page objects. This separation allows for the creation of a more structured and maintainable test suite, which corresponds to the Supportability (NFR4) requirement of our system. The POM architecture is a key component of our system design, as it enables the creation of reusable test scripts and page objects. The POM architecture also allows for the easy identification of test scripts that need to be updated when changes are made to the application.



== Design Goals
#TODO[
  Derive design goals from your nonfunctional requirements, prioritize them (as they might conflict with each other) and describe the rationale of your prioritization. Any trade-offs between design goals (e.g., build vs. buy, memory space vs. response time), and the rationale behind the specific solution should be described in this section
]
// Parallelization: The system should be able to run tests in parallel to reduce the overall test execution time. How to optimize test time: 2 dimensional proble between test timeouts and number of workers.

// Future work: Long-running tests may get stronger workers maybe?

== Subsytem Decomposition
#TODO[
  Describe the architecture of your system by decomposing it into subsys- tems and the services provided by each subsystem. Use UML class diagrams including packages / components for each subsystem.
]
// Describe exercise and exam subsystems, and how they are being extended

== Hardware Software Mapping
#TODO[
  This section describes how the subsystems are mapped onto existing hardware and software components. The description is accompanied by a UML deployment diagram. The existing components are often off-the-shelf components. If the components are distributed on different nodes, the network infrastructure and the protocols are also described.
]
// Describe how CI servers execute Playwright tests, including the use of Docker containers and parallel worker processes on Playwright Test Runner.

// == Persistent Data Management
// #TODO[
//   Optional section that describes how data is saved over the lifetime of the system and which data. Usually this is either done by saving data in structured files or in databases. If this is applicable for the thesis, describe the approach for persisting data here and show a UML class diagram how the entity objects are mapped to persistent storage. It contains a rationale of the selected storage scheme, file system or database, a description of the selected database and database administration issues.
// ]

// == Access Control
// #TODO[
//   Optional section describing the access control and security issues based on the nonfunctional requirements in the requirements analysis. It also de- scribes the implementation of the access matrix based on capabilities or access control lists, the selection of authentication mechanisms and the use of en- cryption algorithms.
// ]

// == Global Software Control
// #TODO[
//   Optional section describing the control flow of the system, in particular, whether a monolithic, event-driven control flow or concurrent processes have been selected, how requests are initiated and specific synchronization issues
// ]

// == Boundry Conditions
// #TODO[
//   Optional section describing the use cases how to start up the separate components of the system, how to shut them down, and what to do if a component or the system fails.
// ]

== Cypress to Playwright test migration
// #TODO[
//   Describe the process of migrating the existing test suite from Cypress to Playwright. This includes the identification of key differences between the two frameworks, the benefits of using Playwright, and the steps involved in migrating the tests. Provide a comparison of the two frameworks and highlight the advantages of Playwright over Cypress.
// ]

== Test Coverage
// #TODO[
//   Describe how the system design addresses the test coverage requirements. This includes the identification of areas lacking test coverage, the expansion of the existing test suite, and the incorporation of a new debugging service. Provide a graph of test coverage based on user workflows.
]