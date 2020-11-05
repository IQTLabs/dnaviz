const fc = require('fast-check');

const {toBeDeepCloseTo,toMatchCloseTo} = require('jest-matcher-deep-close-to');
expect.extend({toBeDeepCloseTo, toMatchCloseTo});

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
  y_yau_bp,
  x_yau_bp
} = require('../src/index');

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

function as_yau_bp(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_yau_bp(seq.length));
 const yPtr = __retain(y_yau_bp(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(inStrPtr);
 __release(xPtr);
 __release(yPtr);
 return [x, y];
}

test('test yau-BP of A', () => {
  expect(as_yau_bp('A')).toEqual([
    new Float64Array([0, 1]),
    new Float64Array([0, -1.0]),
  ]);
});

test('test yau-BP of T', () => {
  expect(as_yau_bp('T')).toEqual([
    new Float64Array([0, 1]),
    new Float64Array([0, 1.0]),
  ]);
});

test('test yau-BP of G', () => {
  expect(as_yau_bp('G')).toEqual([
    new Float64Array([0, 1]),
    new Float64Array([0, -0.5]),
  ]);
});

test('test yau-BP of C', () => {
  expect(as_yau_bp('C')).toEqual([
    new Float64Array([0, 1]),
    new Float64Array([0, 0.5]),
  ]);
});

test('test x value correctness for yau-bp', () => {
 fc.assert(
   fc.property(dna, (s) => {
     let output = as_yau_bp(s);
     // how many characters are there? if none, assigned 0
     let atcgu_matches = s.match(/[AaTtCcGgUu]/g) || [];
     let atcgu_match_count = atcgu_matches.length;

     expect(atcgu_match_count * 1).toEqual(output[0][s.length]);
   }),
 );
});

test('test y value correctness for yau-bp', () => {
 fc.assert(
   fc.property(dna, (s) => {
     let output = as_yau_bp(s); 

     // because a's and t's are assigned different y-values, two variables are needed
     let tu_matches = s.match(/[TtUu]/g) || [];
     let a_matches = s.match(/[Aa]/g) || [];
     let atu_match_count = tu_matches.length - a_matches.length;

     let g_matches = s.match(/[Gg]/g) || [];
     let c_matches = s.match(/[Cc]/g) || [];
     let gc_match_count = -g_matches.length + c_matches.length;

     //  |a\t\u| = 1, |g\c| = 0.5
     expect(atu_match_count + gc_match_count * 0.5).toEqual(output[1][s.length]);
   }),
 );
});

test('test yau-bp y array length', () => {
 fc.assert(
   fc.property(dna, (s) => {
     expect(as_yau_bp(s)[1].length == s.length + 1).toBe(true);
   }),
 );
});

test('test yau_bp of basic', () => {
 expect(as_yau_bp('ATGC')).toEqual([
   new Float64Array([0, 1, 2, 3, 4]),
   new Float64Array([0, -1, 0, -0.5, 0]),
 ]);
});

test('check case insensitivity', () => {
  fc.assert(
    fc.property(dna, (s) => {
      expect(as_yau_bp(s)).toEqual(as_yau_bp(s.toLowerCase()));
    }),
  );
 });

test('throws on non-ATGCU', () => {
  expect(() => {
    as_yau_bp('NAN');
  }).toThrow();
 });

 console.log(as_yau_bp("AA"))
 console.log(as_yau_bp("aa"))