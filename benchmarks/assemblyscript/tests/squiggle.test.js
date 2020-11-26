const fc = require('fast-check');

// const {
//   toBeDeepCloseTo,
//   toMatchCloseTo,
// } = require('jest-matcher-deep-close-to');
// expect.extend({ toBeDeepCloseTo, toMatchCloseTo });

const dna = fc.stringOf(
  fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
  1,
  10000,
);

const { as_squiggle_two_array_output } = require('../index');

test('test squiggle of ATGC', () => {
  expect(as_squiggle_two_array_output('ATGC')).toEqual([
    new Float64Array([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4]),
    new Float64Array([0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]),
  ]);
});

test('test squiggle of A', () => {
  expect(as_squiggle_two_array_output('A')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, 0.5, 0]),
  ]);
});

test('test squiggle of T', () => {
  expect(as_squiggle_two_array_output('T')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, -0.5, -1]),
  ]);
});

test('test squiggle of G', () => {
  expect(as_squiggle_two_array_output('G')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, 0.5, 1]),
  ]);
});

test('test squiggle of C', () => {
  expect(as_squiggle_two_array_output('C')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, -0.5, 0]),
  ]);
});

test('test squiggle length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(as_squiggle_two_array_output(s)[0].length).toBe(
        as_squiggle_two_array_output(s)[1].length,
      );
      expect(
        as_squiggle_two_array_output(s)[0].length == 2 * s.length + 1,
      ).toBe(true);
    }),
  );
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(as_squiggle_two_array_output(s.toLowerCase())).toEqual(
        as_squiggle_two_array_output(s),
      );
    }),
  );
});

test('check non-ATGCU cases', () => {
  fc.assert(
    fc.property(fc.string(100), (s) => {
      let tu_matches = s.match(/[TtUu]/g) || [];
      // let a_matches = s.match(/[Aa]/g) || [];
      let g_matches = s.match(/[Gg]/g) || [];
      // let c_matches = s.match(/[Cc]/g) || [];
      let output = as_squiggle_two_array_output(s)[1];

      expect(g_matches.length - tu_matches.length).toEqual(
        output[output.length - 1],
      );
    }),
  );
});
