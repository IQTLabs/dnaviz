import * as fc from 'fast-check';
import { yau_int } from '../dnaviz';
import { dna } from './common';

test('test x value correctness for yau-bp', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let x = yau_int(s)[0];
      expect(s.length).toEqual(x[x.length - 1]);
    }),
  );
});

test('test y value correctness for yau-bp', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let y = yau_int(s)[1];

      // because a's and t's are assigned different y-values, two variables are needed
      let tu_matches = s.match(/[TtUu]/g) || [];
      let a_matches = s.match(/[Aa]/g) || [];
      let atu_match_count = tu_matches.length - a_matches.length;

      let g_matches = s.match(/[Gg]/g) || [];
      let c_matches = s.match(/[Cc]/g) || [];
      let gc_match_count = -g_matches.length + c_matches.length;

      //  |a\t\u| = 1, |g\c| = 0.5
      expect(2 * atu_match_count + gc_match_count).toEqual(y[y.length - 1]);
    }),
  );
});

test('test yau-bp length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(yau_int(s)[0].length == s.length + 1).toBe(true);
      expect(yau_int(s)[0].length).toEqual(yau_int(s)[1].length);
    }),
  );
});

test('test yau_bp of basic', () => {
  expect(yau_int('ATGC')).toEqual([
    [0, 1, 2, 3, 4],
    [0, -2, 0, -1, 0],
  ]);
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(yau_int(s)).toEqual(yau_int(s.toLowerCase()));
    }),
  );
});

test('throws on non-ATGCU', () => {
  expect(() => {
    yau_int('NAN');
  }).not.toThrow();
});
