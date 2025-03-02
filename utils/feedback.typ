#let feedback(feedback: "", response: "") = {
    counter("feedback").step();
    block(
        breakable: false,
        par(
            justify: true,
            [*#context counter("feedback").display(). Feedback: * #feedback]
        ) +
        pad(
            top: 2mm,
            left: 5%,
            bottom: 5mm,
            par(
                justify: true,
                text(
                    fill: blue,
                    [*Response:* #response]
                )
            )
        )
    )
}
