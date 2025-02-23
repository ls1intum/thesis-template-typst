#let feedback(feedback: "", response: "") = context {
    counter("feedback").update(1)
    block(
        breakable: false,
        par(
            strong(counter("feedback").display() + ". Feedback: ") + feedback
        ) +
        pad(
            top: 2mm,
            left: 5%,
            bottom: 5mm,
            par(
                justify: true,
                text(
                    fill: blue,
                    strong("Response: ") + response
                )
            )
        )
    )
}