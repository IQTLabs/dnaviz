import * as fc from 'fast-check';
import { yau_bp } from '../dnaviz';
import { dna } from './common';

test('test x value correctness for yau-bp', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let x = yau_bp(s)[0];

      // how many characters are there? if none, assigned 0
      let atcgu_matches = s.match(/[AaTtCcGgUu]/g) || [];
      let atcgu_match_count = atcgu_matches.length;

      expect(atcgu_match_count * 1).toEqual(x[x.length - 1]);
    }),
  );
});

test('test y value correctness for yau-bp', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let y = yau_bp(s)[1];

      // because a's and t's are assigned different y-values, two variables are needed
      let tu_matches = s.match(/[TtUu]/g) || [];
      let a_matches = s.match(/[Aa]/g) || [];
      let atu_match_count = tu_matches.length - a_matches.length;

      let g_matches = s.match(/[Gg]/g) || [];
      let c_matches = s.match(/[Cc]/g) || [];
      let gc_match_count = -g_matches.length + c_matches.length;

      //  |a\t\u| = 1, |g\c| = 0.5
      expect(atu_match_count + gc_match_count * 0.5).toEqual(y[y.length - 1]);
    }),
  );
});

test('test yau-bp length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(yau_bp(s)[0].length == s.length + 1).toBe(true);
      expect(yau_bp(s)[0].length).toEqual(yau_bp(s)[1].length);
    }),
  );
});

test('test yau_bp of basic', () => {
  expect(yau_bp('ATGC')).toEqual([
    [0, 1, 2, 3, 4],
    [0, -1, 0, -0.5, 0],
  ]);
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(yau_bp(s)).toEqual(yau_bp(s.toLowerCase()));
    }),
  );
});

test('throws on non-ATGCU', () => {
  expect(() => {
    yau_bp('NAN');
  }).toThrow();
});