import * as fc from 'fast-check';
import { yau_bp } from '../dnaviz';

test('test x value correctness for yau-bp', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
      expect(
        s.split('A').length -
          1 +
          (s.split('a').length - 1) +
          (s.split('C').length - 1) +
          (s.split('c').length - 1) +
          (s.split('T').length - 1) +
          (s.split('t').length - 1) +
          (s.split('U').length - 1) +
          (s.split('u').length - 1) +
          (s.split('G').length - 1) +
          (s.split('g').length - 1) ==
          yau_bp(s)[0][yau_bp(s)[0].length - 1],
      ).toBe(true);
    }),
  );
});

test('test y value correctness for yau-bp', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
      expect(
        -(s.split('A').length - 1) -
          (s.split('a').length - 1) +
          (s.split('T').length - 1) +
          (s.split('t').length - 1) +
          (s.split('U').length - 1) +
          (s.split('u').length - 1) +
          0.5 *
            (s.split('C').length -
              1 +
              (s.split('c').length - 1) -
              (s.split('G').length - 1) -
              (s.split('g').length - 1)) ==
          yau_bp(s)[1][yau_bp(s)[1].length - 1],
      ).toBe(true);
    }),
  );
});

test('test yau-bp length', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
      expect(yau_bp(s)[0].length == s.length + 1).toBe(true);
    }),
  );
});

test('test yau_bp of basic', () => {
  expect(yau_bp('ATGC')).toEqual([
    [0, 1, 2, 3, 4],
    [0, -1, 0, -0.5, 0],
  ]);
});
