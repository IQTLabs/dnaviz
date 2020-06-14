import * as fc from 'fast-check';
import { randic } from '../dnaviz';
import { qi } from '../dnaviz';
import { dna } from './common';
import { dna2 } from './common';

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

// takes each character from generated string and runs randic on that string
// then takes the string as a key for the object 
// these two values are compared
test('test randic', () => {
  fc.assert(
    fc.property(dna, (s) => {
      for (let i = 0; i < s.length; i++) {
        const actual = randicKey[s[i]];
        const expected = randic(s[i])[1][1];
        expect(actual).toEqual(expected);
      }
    }),
  );
});

const qiKey: any = {
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

// takes random char and char + 1 from random gen string
// filters these chars to fit key vals (uppercase U --> T)
// compares object val to function val
test('test qi', () => {
  fc.assert(
    fc.property(dna2, (s) => {
      for (let i = 0; i < s.length - 1; i++) {
        s = s.toUpperCase()
        let S_1 = s[i];
        let S_2 = s[i + 1];
        if (S_1 === 'U') {
          S_1 = 'T';
        } else if (S_2 === 'U') {
          S_2 = 'T';
        }

        const actual = qiKey[S_1 + S_2];
        const expected = qi(s[i] + s[i + 1])[1][1];
        expect(actual).toEqual(expected);
      }
    }),
  );
});
