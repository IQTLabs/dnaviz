function gates(sequence) {
    let x = [0.0]
    let y = [0.0]
    let xCoord = 0.0
    let yCoord = 0.0
    for (let _i = 0; _i < sequence.length; _i++) {
        let character = sequence[_i]
        if (character == "A") {
            yCoord--
        } else if (character == "C") {  
            xCoord--
        } else if (character == "T") {
            yCoord++
        } else if (character == "G") {
            xCoord++
        } 
        x.push(xCoord)
        y.push(yCoord)
    }
    let result = []
    result.push(x)
    result.push(y)
    return result
}

console.log(gates('ACTGACTGACTG'))