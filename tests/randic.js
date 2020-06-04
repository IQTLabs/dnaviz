function randic(sequence) {
    let x = [0.0]
    let y = [0.0]
    key = {
        'A': 3,
        'T': 2,
        'G': 1,
        'C': 0,
        'N': 4
    }
    for (let i = 0; i < sequence.length; i++) {
        x.push(i + 1)
        y.push(key[sequence[i]])
    }
    let result = []
    result.push(x)
    result.push(y)
    return result
}

module.exports = randic;