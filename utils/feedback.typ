#let feedback(
    feedback: "",
    response: "",
) = {
    counter("feedback").step()
    block(
        breakable: false,
        (
            par(
                justify: true,            
                text(weight: 700, counter("feedback").display() + ". Feedback: ") +
                feedback + 
                pad(
                    left: 5%,
                    top: 2mm,
                    bottom: 5mm,
                    text(
                        fill: blue,
                        text(weight: 700, "Response: ") + response
                    )
                )
            ) 
        )
    )
}