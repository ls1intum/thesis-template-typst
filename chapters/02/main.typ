= Background <bg>

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: Describe each proven technology / concept shortly that is important to understand your thesis. Point out why it is interesting for your thesis. Make sure to incorporate references to important literature here.
]

== Usability

// / Less Is More: Fewer options help users to understand the options they have better.
=== Details Matter

Minor details often affect the usability of a user interface
#cite(<nielsen1993UE>).
// Learnability, efficiency, and memorability.
Those minor details can make a user interface easier to learn, easier to remember, and more efficient to use.
// Errors.
Moreover, a system that displays fewer errors or errors that a user can easily recover from is more usable.
// Satisfaction.
Last but not least, a user should feel satisfied, while using the user interface.

=== Less Is More

Nielsen #cite(<nielsen1993UE>) puts users in a three-dimensional space with three axes: from novice to expert user of the system, from ignorant to knowledgable about the domain, and from minimal to extensive computer experience.
// We consider students (in the first semester) novice users who are ignorant about the domain,
// and tutors expert users of the system who are knowledgeable about the domain. 
Extraneous information slows down both novice and expert users.
Fewer options, that is features and interaction mechanisms, help to increase the usability for both novice and expert users.

== Gestalt

Gestalt psychology creates "the idea that the whole is different from the sum of its parts"
#cite(<rock1990legacy>).
Gestaltists describe the emergent properties of a structure.
The properties are not inherent to the structure's components.
Rather some structure properties arise from the organization of its components.
The original Gestalt laws of grouping are proximity, similarity, closure, and good continuation.
// Rock and Palmer #cite(<rock1990legacy>) propose two new laws of grouping: common region and connectedness.
Screens in a user interface can use the Gestalt laws of grouping to organize components that belong together
#cite<nielsen1993UE>).

== WebSocket

The WebSocket protocol enables programs to maintain bidirectional communications in the client/server architectural style
#footnote("https://www.rfc-editor.org/rfc/rfc6455.html").
For busy applications, e.g., messaging services, a server can use fewer WebSocket connections, compared to HTTP request, which would be necessary between the server and its clients.
// #footnote("https://websockets.spec.whatwg.org/#the-websocket-interface").

In detail, the WebSocket protocol "adds an addressing and protocol naming mechanism to support multiple services on one port and multiple host names on one IP address".
WebSockets do not provide any other metadata on their own.

The STOMP protocol "defines a text-based wire format for messages passed between these clients and servers"
#footnote("https://stomp.github.io/stomp-specification-1.2.html").

Note that servers and clients may use a prefix to identify user destinations, i.e., which is used to translate the URI into one, that does not collide with any other URI.
"The default prefix used to identify such destinations is "/user/"."
#footnote("https://docs.spring.io/spring-framework/docs/5.0.2.RELEASE/kdoc-api/spring-framework/org.springframework.messaging.simp.config/-message-broker-registry/set-user-destination-prefix.html").

The Artemis iOS applications may connect to an Artemis server through a WebSocket connection, besides calling the server's REST interfaces.

== e.g. User Feedback
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section would summarize the concept User Feedback using definitions, historical overviews and pointing out the most important aspects of User Feedback.
]

== e.g. Representational State Transfer
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section would summarize the architectural style Representational State Transfer (REST) using definitions, historical overviews and pointing out the most important aspects of the architecture.
]

== e.g. Scrum
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  Note: This section would summarize the agile method Scrum using definitions, historical overviews and pointing out the most important aspects of Scrum.
]
