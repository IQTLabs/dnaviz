const fc = require('fast-check');
const expect = require('chai').expect;

const dna2 = fc.stringOf(
  fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
  { minLength: 2, maxLength: 20 },
);

const { as_qi, as_randic } = require('../index');

const randicKey = {
  A: 3,
  T: 2,
  U: 2,
  G: 1,
  C: 0,
  a: 3,
  t: 2,
  u: 2,
  g: 1,
  c: 0,
};

describe('randic', () => {
  it('test randic', () => {
    fc.assert(
      fc.property(
        fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
        (s) => {
          for (let i = 0; i < s.length; i++) {
            const expected = randicKey[s[i]];
            const actual = as_randic(s[i])[1][0];
            expect(actual).to.equal(expected);
          }
        },
      ),
    );
  });
});

describe('qi', () => {
  const qiKey = {
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
  //   it('test qi', () => {
  //     fc.assert(
  //       fc.property(dna2, (s) => {
  //         for (let i = 0; i < s.length - 1; i++) {
  //           s = s.toUpperCase();
  //           let S_1 = s[i];
  //           let S_2 = s[i + 1];
  //           if (S_1 === 'U') {
  //             S_1 = 'T';
  //           } else if (S_2 === 'U') {
  //             S_2 = 'T';
  //           }
  //           const expected = qiKey[S_1 + S_2];
  //           const actual = as_qi(s[i] + s[i + 1])[1][0];
  //           expect(actual).to.equal(expected);
  //         }
  //       }),
  //     );
  //   });
  it('basic qi', () => {
    expect(as_qi('UU')[1][0]).to.equal(15);
  });
});
