import * as fc from 'fast-check';
import { randic } from '../dnaviz';
import { qi } from '../dnaviz';
import { dna } from './common'
import { dna2 } from './common'

const randicKey: any = {
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
    fc.property(dna,
      (s) => {
        for (let idx = 0; idx < s.length; idx++) {
          const actual = randicKey[s[idx]]
          const expected = randic(s[idx])[1][1]
          expect(expected).toEqual(actual);
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
    fc.property(dna2, (s) => {
      for (let idx = 0; idx < s.length; idx++) {
        const expected = qi_key[s[idx] + s[idx + 1]]
        const actual = qi(s[idx])[1][1]
        expect(actual).toEqual(expected)
      }
    }),
  );
});
