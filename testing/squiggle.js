function squiggle(sequence) {
    let x = [0.0]
    let y = [0.0]
    let yCoord = 0.0

    for (let _i = 0; _i < sequence.length; _i++) {
        let character = sequence[_i]
        x.push(x[x.length - 1] + 0.5)
        x.push(x[x.length - 1] + 1.0)                   
        if (character == "A") {
            y.push(yCoord + 0.5)
            y.push(yCoord)
        } else if (character == "C") {
            y.push(yCoord - 0.5)
            y.push(yCoord)
        } else if (character == "T") {
            y.push(yCoord - 0.5)
            y.push(yCoord - 1)
            yCoord -= 1.0
        } else if (character == "G") {
            y.push(yCoord + 0.5)
            y.push(yCoord + 1)
            yCoord += 1.0
        } else {
            y.push(yCoord)
            y.push(yCoord)
        }
    }
    let result = []
    result.push(x)
    result.push(y)
    return result
}

console.log(squiggle('ACTCTCTCTCTCTCCTCTTTCTCTC'))