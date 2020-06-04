const yau = require('./yau')

test('test yau of A', () => {
    expect(yau('A')).toEqual([[0, 0.5], [0, -(3 ** 0.5) / 2]]);
});

test('test yau of T', () => {
    expect(yau('T')).toEqual([[0, 0.5], [0, (3 ** 0.5) / 2]]);
});

test('test yau of G', () => {
    expect(yau('G')).toEqual([[0, (3 ** 0.5) / 2], [0, -0.5]]);
});

test('test yau of C', () => {
    expect(yau('C')).toEqual([[0, (3 ** 0.5) / 2], [0, 0.5]]);
});

test('test yau of invlid', () => {
    expect(yau('N')).toEqual([[0, 0], [0, 0]]);
});

test('test yau of ATG', () => {
    expect(yau('ATG')).toEqual([[0, 0.5, 1, 1 + (3**0.5)/2],
    [0, -(3**0.5)/2, 0, -0.5]]);
});

test('test yau of TTC', () => {
    expect(yau('TTC')).toEqual([[0, 0.5, 1, 1 + (3**0.5)/2],
    [0, (3**0.5)/2, (3**0.5), (3**0.5) + 0.5]]);
});
