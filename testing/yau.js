function yau(sequence) {
    let x = [0.0]
    let y = [0.0]
    let xCoord = 0.0
    let yCoord = 0.0

    for (let _i = 0; _i < sequence.length; _i++) {
        let character = sequence[_i]
        if (character == "A") {
            xCoord = xCoord + 0.5
            yCoord = yCoord - ((3**0.5)/2)
        } else if (character == "C") {
            xCoord = xCoord + ((3**0.5)/2)
            yCoord = yCoord + 0.5
        } else if (character == "T") {
            xCoord = xCoord + 0.5
            yCoord = yCoord + ((3**0.5)/2)
        } else if (character == "G") {
            xCoord = xCoord + ((3**0.5)/2)
            yCoord = yCoord - 0.5
        } 
        x.push(xCoord)
        y.push(yCoord)
    }
    let result = []
    result.push(x)
    result.push(y)
    return result
}

console.log(yau('ACTCGCTGCTTCGGGCTAGCTAGCTA'))