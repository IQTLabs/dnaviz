import * as fc from 'fast-check';
import { gates } from '../dnaviz';
import { dna } from './common';

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

test('test basic', () => {
  expect(gates('ATGC')).toEqual([
    [0, 0, 0, 1, 0],
    [0, -1, 0, 0, 0],
  ]);
});

test('test gates endpoints', () => {
  fc.assert(
    fc.property(dna, (s) => {
      // counts the number of each base
      // if count == 0 then it is assigned an empty array

      let g_count = s.match(/[Gg]/g) || [];
      let c_count = s.match(/[Cc]/g) || [];
      let tu_count = s.match(/[TtUu]/g) || [];
      let a_count = s.match(/[Aa]/g) || [];

      //"If the function n(Z) denotes the number of occurrences of nucleotide Z
      // in a given sequence, the end-point of the sequence lies at coordinate
      // position [(n(G) - n(C)), (n(T) - n(A))]" (Gates, J. theor. Biol. 1986)

      expect(g_count.length - c_count.length).toBe(
        gates(s)[0][gates(s)[0].length - 1],
      );
      expect(tu_count.length - a_count.length).toBe(
        gates(s)[1][gates(s)[1].length - 1],
      );
    }),
  );
});

test('throws on non-ATGCU', () => {
  expect(() => {
    gates('NAN');
  }).toThrow();
});