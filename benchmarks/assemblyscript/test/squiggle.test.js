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

const {
  __alloc,
  __retain,
  __release,
  memory,
  x_squiggle,
  y_squiggle,
} = require('../index');

let alloc = __alloc;

function __allocString(str) {
  const length = str.length;
  const ptr = alloc(length << 1, 1);
  const U16 = new Uint16Array(memory.buffer);
  for (let i = 0, p = ptr >>> 1; i < length; ++i) {
    U16[p + i] = str.charCodeAt(i);
  }
  return ptr;
}

function getFloat64Array(ptr) {
  const buffer = memory.buffer;
  const U32 = new Uint32Array(buffer);
  const bufPtr = U32[(ptr + 4) >>> 2];
  return new Float64Array(buffer, bufPtr, U32[(bufPtr - 4) >>> 2] >>> 3);
}

function squiggle(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const xPtr = x_squiggle(seq.length);
  const yPtr = y_squiggle(inStrPtr, seq.length);
  const x = getFloat64Array(xPtr);
  const y = getFloat64Array(yPtr);
  __release(inStrPtr);
  __release(xPtr);
  __release(yPtr);
  return [x, y];
}

test('test squiggle of ATGC', () => {
  expect(squiggle('ATGC')).toEqual([
    new Float64Array([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4]),
    new Float64Array([0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]),
  ]);
});

test('test squiggle of A', () => {
  expect(squiggle('A')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, 0.5, 0]),
  ]);
});

test('test squiggle of T', () => {
  expect(squiggle('T')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, -0.5, -1]),
  ]);
});

test('test squiggle of G', () => {
  expect(squiggle('G')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, 0.5, 1]),
  ]);
});

test('test squiggle of C', () => {
  expect(squiggle('C')).toEqual([
    new Float64Array([0, 0.5, 1]),
    new Float64Array([0, -0.5, 0]),
  ]);
});

test('test squiggle length', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(squiggle(s)[0].length).toBe(squiggle(s)[1].length);
      expect(squiggle(s)[0].length == 2 * s.length + 1).toBe(true);
    }),
  );
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(squiggle(s.toLowerCase())).toBe(squiggle(s));
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
      let y = squiggle(s)[1];

      expect(g_matches.length - tu_matches.length).toBe(y[y.length - 1]);
    }),
  );
});
