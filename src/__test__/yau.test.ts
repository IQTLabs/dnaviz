import { yau } from '../dnaviz';
import * as fc from 'fast-check';

test('test yau of A', () => {
    expect(yau('A')).toEqual([
        [0, 0.5],
        [0, -(3 ** 0.5 / 2)],
    ]);
});

test('test yau of T', () => {
    expect(yau('T')).toEqual([
        [0, 0.5],
        [0, 3 ** 0.5 / 2],
    ]);
});

test('test yau of U', () => {
    expect(yau('U')).toEqual([
        [0, 0.5],
        [0, 3 ** 0.5 / 2],
    ]);
});

test('test yau of G', () => {
    expect(yau('G')).toEqual([
        [0, 3 ** 0.5 / 2],
        [0, -0.5],
    ]);
});

test('test yau of C', () => {
    expect(yau('C')).toEqual([
        [0, 3 ** 0.5 / 2],
        [0, 0.5],
    ]);
});

test('test y value correctness for yau', () => {
    fc.assert(
        fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
            expect(
                yau(s)[1][yau(s)[1].length - 1] ===
                -(3 ** 0.5 / 2) * (s.split('A').length - 1 + (s.split('a').length - 1)) +
                (3 ** 0.5 / 2) *
                ((s.split('T').length - 1) +
                    (s.split('t').length - 1) +
                    (s.split('U').length - 1) +
                    (s.split('u').length - 1)) +
                0.5 * (s.split('C').length - 1 + (s.split('c').length - 1)) -
                0.5 * (s.split('G').length - 1 + (s.split('g').length - 1)),
            ).toBe(true);
        }),
    );
});

test('test x value correctness for yau', () => {
    fc.assert(
        fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
            expect(
                yau(s)[0][yau(s)[1].length - 1] ==
                (3 ** 0.5 / 2) * (s.split('G').length - 1) +
                s.replace(/[^C]/g, '').length +
                0.5 * (s.replace(/[^A]/g, '').length + s.replace(/[^T]/g, '').length + s.replace(/[^U]/g, '').length),
            ).toBe(true);
        }),
    );
});
