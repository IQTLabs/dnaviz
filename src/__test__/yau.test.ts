import { yau } from '../dnaviz';
import * as fc from 'fast-check';
import { dna } from './common';

test('test yau of A', () => {
  expect(yau('A')).toEqual([
    [0, 0.5],
    [0, 3 ** 0.5 / -2],
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

test('test yau of ATGC', () => {
  expect(yau('ATGC')).toEqual([
    [0, 0.5, 1, 1 + 3 ** 0.5 / 2, 1 + 2 * (3 ** 0.5 / 2)],
    [0, -(3 ** 0.5 / 2), 0, -0.5, 0],
  ]);
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(yau(s)).toEqual(yau(s.toLowerCase()));
    }),
  );
});

test('test last x value correctness for yau', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let x = yau(s)[0];

      // how many As, Ts, and Us are there?
      let atu_matches = s.match(/[AaTtUu]/g);
      let atu_match_count = 0;
      if (atu_matches != null) {
        atu_match_count = atu_matches.length;
      }

      // how many Gs and Cs are there?
      let gc_matches = s.match(/[GgCc]/g);
      let gc_match_count = 0;
      if (gc_matches != null) {
        gc_match_count = gc_matches.length;
      }

      // we know the last x value will be the number of
      // A/T/U bases * 0.5 plus the number of G/C bases * sqrt(3)/2
      expect(
        atu_match_count * 0.5 + gc_match_count * (3 ** 0.5 / 2),
      ).toBeCloseTo(x[x.length - 1]);
    }),
  );
});

test('test y value correctness for yau', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(
        (3 ** 0.5 / 2) *
          (s.split('T').length -
            1 +
            (s.split('t').length - 1) +
            (s.split('U').length - 1) +
            (s.split('u').length - 1) -
            (s.split('A').length - 1) -
            (s.split('a').length - 1)) +
          0.5 *
            (s.split('C').length -
              1 +
              (s.split('c').length - 1) -
              (s.split('G').length - 1) -
              (s.split('g').length - 1)) ==
          yau(s)[1][yau(s)[1].length - 1],
      ).toBe(true);
    }),
  );
});

test('test yau length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let t = yau(s);
      expect(t[0].length).toEqual(t[1].length); // x and y are equal length
      expect(t[1].length).toEqual(s.length + 1); // total length check
    }),
  );
});
