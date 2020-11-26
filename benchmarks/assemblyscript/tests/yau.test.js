const fc = require('fast-check');

const dna = fc.stringOf(
  fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
  1,
  10000,
);

const { as_yau } = require('../index');

test('test yau of A', () => {
  expect(as_yau('A')).toEqual(new Float64Array([0, 0.5, 0, 3 ** 0.5 / -2]));
});

test('test yau of T', () => {
  expect(as_yau('T')).toEqual(new Float64Array([0, 0.5, 0, 3 ** 0.5 / 2]));
});

test('test yau of U', () => {
  expect(as_yau('U')).toEqual(new Float64Array([0, 0.5, 0, 3 ** 0.5 / 2]));
});

test('test yau of G', () => {
  expect(as_yau('G')).toEqual(new Float64Array([0, 3 ** 0.5 / 2, 0, -0.5]));
});

test('test yau of C', () => {
  expect(as_yau('C')).toEqual(new Float64Array([0, 3 ** 0.5 / 2, 0, 0.5]));
});

test('test yau of ATGC', () => {
  expect(as_yau('ATGC')).toEqual(
    new Float64Array([
      0,
      0.5,
      1,
      1 + 3 ** 0.5 / 2,
      1 + 2 * (3 ** 0.5 / 2),
      0,
      -(3 ** 0.5 / 2),
      0,
      -0.5,
      0,
    ]),
  );
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(as_yau(s)).toEqual(as_yau(s.toLowerCase()));
    }),
  );
});

test('test last x value correctness for yau', () => {
  fc.assert(
    fc.property(dna, (s) => {
      // how many As, Ts, and Us are there?
      let atu_matches = s.match(/[AaTtUu]/g) || [];
      let atu_match_count = atu_matches.length;

      // how many Gs and Cs are there?
      let gc_matches = s.match(/[GgCc]/g) || [];
      let gc_match_count = gc_matches.length;

      let output = as_yau(s);
      // we know the last x value will be the number of
      // A/T/U bases * 0.5 plus the number of G/C bases * sqrt(3)/2
      expect(
        atu_match_count * 0.5 + gc_match_count * (3 ** 0.5 / 2),
      ).toBeCloseTo(output[s.length]);
    }),
  );
});

test('test y value correctness for yau', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let tu_matches = s.match(/[TtUu]/g) || [];
      let a_matches = s.match(/[Aa]/g) || [];
      let atu_match_count = tu_matches.length - a_matches.length;

      let g_matches = s.match(/[Gg]/g) || [];
      let c_matches = s.match(/[Cc]/g) || [];
      let gc_match_count = -g_matches.length + c_matches.length;

      let output = as_yau(s);

      expect(
        atu_match_count * (3 ** 0.5 / 2) + gc_match_count * 0.5,
      ).toBeCloseTo(output[2 * s.length + 1]);
    }),
  );
});

test('test yau length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      let t = as_yau(s);
      let w = s.length * 2 + 2;
      expect(t.length).toEqual(w);
    }),
  );
});

test('throws on non-ATGCU', () => {
  expect(() => {
    as_yau('NAN');
  }).toThrow();
});
