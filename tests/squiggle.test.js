const squiggle = require('./squiggle')
const jsc = require('jsverify')

test('test squiggle of A', () => {
    expect(squiggle('A')).toEqual([[0, 0.5, 1], [0, 0.5, 0]]);
});

test('test squiggle of T', () => {
    expect(squiggle('T')).toEqual([[0, 0.5, 1], [0, -0.5, -1]]);
});

test('test squiggle of G', () => {
    expect(squiggle('G')).toEqual([[0, 0.5, 1], [0, 0.5, 1]]);
});

test('test squiggle of C', () => {
    expect(squiggle('C')).toEqual([[0, 0.5, 1], [0, -0.5, 0]]);
});

test('test squiggle of invlid', () => {
    expect(squiggle('N')).toEqual([[0, 0.5, 1], [0, 0, 0]]);
});

test('test squiggle of ATG', () => {
    expect(squiggle('ATG')).toEqual([[0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
        [0, 0.5, 0, -0.5, -1.0, -0.5, 0.0]]);
});

test('test squiggle of TTC', () => {
    expect(squiggle('TTC')).toEqual([[0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
        [0, -0.5, -1.0, -1.5, -2.0, -2.5, -2.0]]);
});
