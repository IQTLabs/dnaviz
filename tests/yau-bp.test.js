const yau_bp = require('./yau-bp')

test('test yau_bp of A', () => {
    expect(yau_bp('A')).toEqual([[0, 1], [0, -1]]);
});

test('test yau_bp of T', () => {
    expect(yau_bp('T')).toEqual([[0, 1], [0, 1]]);
});

test('test yau_bp of G', () => {
    expect(yau_bp('G')).toEqual([[0, 1], [0, -0.5]]);
});

test('test yau_bp of C', () => {
    expect(yau_bp('C')).toEqual([[0, 1], [0, 0.5]]);
});

test('test yau_bp of invlid', () => {
    expect(yau_bp('N')).toEqual([[0, 1], [0, 0]]);
});

test('test yau_bp of ATG', () => {
    expect(yau_bp('ATG')).toEqual([[0, 1, 2, 3],
    [0, -1, 0, -0.5]]);
});

test('test yau_bp of TTC', () => {
    expect(yau_bp('TTC')).toEqual([[0, 1, 2, 3],
    [0, 1, 2, 2.5]]);
});
