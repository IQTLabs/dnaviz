import * as fc from 'fast-check';
import { gates } from '../dnaviz';

test('test gates of A', () => {
    expect(gates('A')).toEqual([
        [0, 0],
        [0, -1],
    ]);
});

test('test gates of T', () => {
    expect(gates('T')).toEqual([
        [0, 0],
        [0, 1],
    ]);
});

test('test gates of G', () => {
    expect(gates('G')).toEqual([
        [0, 1],
        [0, 0],
    ]);
});

test('test gates of C', () => {
    expect(gates('C')).toEqual([
        [0, -1],
        [0, 0],
    ]);
});

test('test gates endpoints', () => {
    fc.assert(
        fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
            expect(
                gates(s)[0][gates(s)[0].length - 1] ===
                s.split('G').length - 1 + (s.split('g').length - 1) - (s.split('C').length - 1) - (s.split('c').length - 1),
            ).toBe(true);
            expect(
                gates(s)[1][gates(s)[1].length - 1] ===
                s.split('T').length -
                1 +
                (s.split('t').length - 1) +
                (s.split('U').length - 1) +
                (s.split('u').length - 1) -
                (s.split('A').length - 1) -
                (s.split('a').length - 1),
            ).toBe(true);
        }),
    );
});
