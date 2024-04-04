= System Design <sd>

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: This chapter follows the System Design Document Template in <bruegge2004object>. You describe in this chapter how you map the concepts of the application domain to the solution domain. Some sections are optional, if they do not apply to your problem. Cite <bruegge2004object> several times in this chapter.
// ]
// Copy of bachelor's thesis, p.37
The system design activity transforms the analysis object model, the dynamic model, and the nonfunctional requirements into design goals, and the subsystem decomposition.
Additionally, a hardware/software mapping strategy, persistent data management, and access control are defined
@bruegge2004OOSE.

== Overview

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Provide a brief overview of the software architecture and references to other chapters (e.g. requirements analysis), references to existing systems, constraints impacting the software architecture..
// ]
The iOS app consists of three layers: the view, view model, and service layers, similar to the Artemis server's three layers: the web, application, and data layers.
The server and client talk to each other in a client-server architectural style, which we show in @sd-overview.

#figure(
  image("top-level-design.jpg"),
  caption: [
    The component diagram shows the three-layer architectural styles of the Artemis server and the iOS app.
  ]
) <sd-overview>

== Design Goals

// #rect(
//   width: 100%,
//   radius: 10%,
//   stroke: 0.5pt,
//   fill: yellow,
// )[
//   Note: Derive design goals from your nonfunctional requirements, prioritize them (as they might conflict with each other) and describe the rationale of your prioritization. Any trade-offs between design goals (e.g., build vs. buy, memory space vs. response time), and the rationale behind the specific solution should be described in this section
// ]
It is the first step of system design to define design goals, which may be inferred from the nonfunctional requirements in @ra-nonfunctional-requirements or may be further elicited from the client
@bruegge2004OOSE.
The design goals are discussed in their order of importance.
The first design goal has the highest priority.

=== Usability

The first goal is to satisfy the user with a great user experience.
The impact of usability expands to the other design goals.

=== Performance

Many users use Artemis clients at the same time, necessarily because students attend a class at the same time.
The communication feature needs to coordinate many messages between many clients.

=== Dependability

The native Android and iOS clients are unique in that they enable persistence across launches, a capability that is more present in native apps than in web clients.
We use the capabilities of native apps to make them more reliable than their web counterparts, e.g., let a user finish a task without losing their data.

=== Maintenance

The iOS app is a companion to the Artemis server, among the web client and Android app.
Developers work on the Artemis server and web client in lockstep.
The development cycles of the native Android and iOS apps do not integrate to the same extent.
Developers should be able to easily recognize the subsystem decomposition similar to the server.

== Subsytem Decomposition

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe the architecture of your system by decomposing it into subsys- tems and the services provided by each subsystem. Use UML class diagrams including packages / components for each subsystem.
]

@sd-subsystem-decomposition shows three system and their subsystems.
The iOS app's _messages service_ corresponds to the server's conversation resource.
The _messages service_ is only relevant after a user accepts the code of conduct.
We model another code of conduct service for local storage.

#figure(
  image("subsystem-decomposition.png"),
  caption: [
    This \_ diagram depicts the subsystems of the server, web client, and Artemis - Learning app.
  ]
) <sd-subsystem-decomposition>

== Hardware Software Mapping

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section describes how the subsystems are mapped onto existing hardware and software components. The description is accompanied by a UML deployment diagram. The existing components are often off-the-shelf components. If the components are distributed on different nodes, the network infrastructure and the protocols are also described.
]

The development will affect the server and client components as shown in @sd-hardware-software-mapping.
Fortunately, the existing implementations for the Android application and web client will give guidance on how the functionality will manifest itself in the iOS application.

#figure(
  image("hardware-software-mapping.jpg"),
  caption: [
    The diagram depicts the deployment of an Artemis server instance and clients for the web, iOS, and Android.
    The exercise services communicate via the HTTPS protocol.
  ]
) <sd-hardware-software-mapping>

== Persistent Data Management

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section that describes how data is saved over the lifetime of the system and which data. Usually this is either done by saving data in structured files or in databases. If this is applicable for the thesis, describe the approach for persisting data here and show a UML class diagram how the entity objects are mapped to persistent storage. It contains a rationale of the selected storage scheme, file system or database, a description of the selected database and database administration issues.
]

SwiftData is a framework, which Apple presented at the conference 'WWDC' in the year 2023.
SwiftData wraps CoreData, originally an Objective-C framework, in a Swift module.
SwiftData and CoreData both access a MySQL database.
@sd-persistent-data-management depicts the entities: server, user, course, conversation, message, and offline message and answer.

We chose to fully qualify the scheme with server and user.
If a user logs out of the app, we can delete the user and if a user changes the server URL, i.e., host, we can delete the server entity.
Our configuration deletes all entities that a higher entity references when the first or second case occurs.

SwiftData lets developers version schemes.
Developers need to write lightweight or manual migrations when a newer scheme is incompatible with an older scheme.

#figure(
  image("persistent-data-management.png"),
  caption: [
    This class diagram shows the properties of entities and their relationships.
  ]
) <sd-persistent-data-management>

== Access Control

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section describing the access control and security issues based on the nonfunctional requirements in the requirements analysis. It also de- scribes the implementation of the access matrix based on capabilities or access control lists, the selection of authentication mechanisms and the use of en- cryption algorithms.
]

We control the access to the communication feature because of the legal requirement \_ of user-generated content.
We store the agreement on the server or hash the code of conduct and store the hash value on the native client.
We ensure that a user accepts the latest code of conduct.

== Global Software Control

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Optional section describing the control flow of the system, in particular, whether a monolithic, event-driven control flow or concurrent processes have been selected, how requests are initiated and specific synchronization issues
]

We distinguish between REST and WebSocket connections.
We call the REST interface whenever we need to load an unchanging resource.
Conversely, we subscribe to WebSocket connections whenever we want to synchronize dynamic data, e.g., messages in a conversation.
There are three actions to messages in a conversation: create, update, and delete.

We update the data structure local to the native client with these actions (create, update, and delete).
