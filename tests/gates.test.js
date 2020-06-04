const gates = require('./gates')

test('test gates of A', () => {
    expect(gates('A')).toEqual([[0, 0], [0, -1]]);
});

test('test gates of T', () => {
    expect(gates('T')).toEqual([[0, 0], [0, 1]]);
});

test('test gates of G', () => {
    expect(gates('G')).toEqual([[0, 1], [0, 0]]);
});

test('test gates of C', () => {
    expect(gates('C')).toEqual([[0, -1], [0, 0]]);
});

test('test gates of invlid', () => {
    expect(gates('N')).toEqual([[0, 0], [0, 0]]);
});

test('test gates of ATG', () => {
    expect(gates('ATG')).toEqual([[0, 0, 0, 1],
        [0, -1, 0, 0]]);
});

test('test gates of TTC', () => {
    expect(gates('TTC')).toEqual([[0, 0, 0, -1],
        [0, 1, 2, 2]]);
});
