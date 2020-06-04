const randic = require('./randic')

test('test randic of A', () => {
    expect(randic('A')).toEqual([[0, 1], [0, 3]]);
});

test('test randic of T', () => {
    expect(randic('T')).toEqual([[0, 1], [0, 2]]);
});

test('test randic of G', () => {
    expect(randic('G')).toEqual([[0, 1], [0, 1]]);
});

test('test randic of C', () => {
    expect(randic('C')).toEqual([[0, 1], [0, 0]]);
});

test('test randic of invlid', () => {
    expect(randic('N')).toEqual([[0, 1], [0, 4]]);
});

test('test randic of ATG', () => {
    expect(randic('ATG')).toEqual([[0, 1, 2, 3],
        [0, 3, 2, 1]]);
});

test('test randic of TTC', () => {
    expect(randic('TTC')).toEqual([[0, 1, 2, 3],
        [0, 2, 2, 0]]);
});
