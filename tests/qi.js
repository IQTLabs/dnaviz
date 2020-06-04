function qi(sequence) {
    let x = [0.0]
    let y = [0.0]
    key = {
        'AA': 12,
        'AC': 4,
        'GT': 6,
        'AG': 0,
        'CC': 13,
        'CA': 5,
        'CG': 10,
        'TT': 15,
        'GG': 14,
        'GC': 11,
        'AT': 8,
        'GA': 1,
        'TG': 7,
        'TA': 9,
        'TC': 3,
        'CT': 2
    }
    let count = 0
    for (let i = 0; i < sequence.length; i = i + 2) {
        count++
        x.push(count)
        y.push(key[sequence[i] + sequence[i+1]])
    }
    let result = []
    result.push(x)
    result.push(y)
    return result
}

module.exports = qi;