import * as fc from 'fast-check';
import { squiggle } from '../dnaviz';
import { dna } from './common';

test('test squiggle of A', () => {
  expect(squiggle('A')).toEqual([
    [0, 0.5, 1],
    [0, 0.5, 0],
  ]);
});

test('test squiggle of T', () => {
  expect(squiggle('T')).toEqual([
    [0, 0.5, 1],
    [0, -0.5, -1],
  ]);
});

test('test squiggle of G', () => {
  expect(squiggle('G')).toEqual([
    [0, 0.5, 1],
    [0, 0.5, 1],
  ]);
});

test('test squiggle of C', () => {
  expect(squiggle('C')).toEqual([
    [0, 0.5, 1],
    [0, -0.5, 0],
  ]);
});

test('test squiggle of ATGC', () => {
  expect(squiggle('ATGC')).toEqual([
    [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0],
    [0, 0.5, 0, -0.5, -1.0, -0.5, 0.0, -0.5, 0.0],
  ]);
});

test('test squiggle length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(squiggle(s)[0].length).toBe(squiggle(s)[1].length);
      expect(squiggle(s)[0].length == 2 * s.length + 1).toBe(true);
    }),
  );
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(squiggle(s)).toEqual(squiggle(s.toLowerCase()));
    }),
  );
});
// needs extra one, starting coord is always the origin (0, 0)

test('check non-ATGCU cases', () => {
  fc.assert(
    fc.property(fc.string(100), (s) => {
      let tu_matches = s.match(/[TtUu]/g) || [];
      // let a_matches = s.match(/[Aa]/g) || [];
      let g_matches = s.match(/[Gg]/g) || [];
      // let c_matches = s.match(/[Cc]/g) || [];
      let y = squiggle(s)[1]

      expect(g_matches.length - tu_matches.length).toEqual(y[y.length - 1])
    }),
  );
});
// if non-AGCTU works properly, end y-value of a random string should equal end y-value of ATGCU string
// for squiggle this end val is only determined by T, U, and G