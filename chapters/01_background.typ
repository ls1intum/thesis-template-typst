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
