import * as fc from 'fast-check';
import { squiggle } from '../dnaviz';
import { yau } from '../dnaviz';
import { yau_bp } from '../dnaviz';
import { gates } from '../dnaviz';
import { randic } from '../dnaviz';
import { qi } from '../dnaviz';

//squiggle test
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

test('test squiggle of invlid', () => {
  expect(squiggle('N')).toEqual([
    [0, 0.5, 1],
    [0, 0, 0],
  ]);
});

test('test squiggle of ATG', () => {
  expect(squiggle('ATG')).toEqual([
    [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
    [0, 0.5, 0, -0.5, -1.0, -0.5, 0.0],
  ]);
});

test('test squiggle of TTC', () => {
  expect(squiggle('TTC')).toEqual([
    [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
    [0, -0.5, -1.0, -1.5, -2.0, -2.5, -2.0],
  ]);
});

test('test squiggle length', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
      expect(squiggle(s)[0].length == 2 * s.length + 1).toBe(true);
    }),
  );
});

//yau
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
              (s.split('T').length -
                1 +
                (s.split('t').length - 1) +
                (s.split('U').length - 1) +
                (s.split('u').length - 1)) +
            0.5 * (s.split('C').length - 1 + (s.split('c').length - 1)) +
            -0.5 * (s.split('G').length - 1 + (s.split('g').length - 1)),
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

//
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

const randic_key: any = {
  A: 3,
  T: 2,
  G: 1,
  C: 0,
  U: 2,
  a: 3,
  t: 2,
  g: 1,
  c: 0,
  u: 2,
};

test('test randic', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 100), (s) => {
      for (let idx = 0; idx < s.length; idx++) {
        let my_char = s.charAt(idx);
        expect(randic(s)[1][idx] == randic_key.my_char);
      }
    }),
  );
});

const qi_key: any = {
  AA: 12,
  AC: 4,
  GT: 6,
  AG: 0,
  CC: 13,
  CA: 5,
  CG: 10,
  TT: 15,
  GG: 14,
  GC: 11,
  AT: 8,
  GA: 1,
  TG: 7,
  TA: 9,
  TC: 3,
  CT: 2,
};

test('test qi', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'T', 'C', 'G'), 2, 100), (s) => {
      for (let idx = 0; idx < s.length; idx++) {
        let my_char = s.charAt(idx) + s.charAt(idx + 1);
        expect(qi(s)[1][idx] == qi_key.my_char);
      }
    }),
  );
});

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
