const fc = require('fast-check');

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
  yau
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

function as_yau(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const outArrPtr = yau(inStrPtr, seq.length);
 const resultArr = getFloat64Array(outArrPtr);
 __release(outArrPtr);
 __release(inStrPtr);
 return resultArr;
}

test('test yau of A', () => {
 expect(as_yau('A')).toEqual(
   new Float64Array([0, 0.5, 0, 3 ** 0.5 / -2]),
 );
});

test('test yau of T', () => {
 expect(as_yau('T')).toEqual(
   new Float64Array([0, 0.5, 0, 3 ** 0.5 / 2])
 );
});

test('test yau of U', () => {
 expect(as_yau('U')).toEqual(
   new Float64Array([0, 0.5, 0, 3 ** 0.5 / 2]),
 );
});

test('test yau of G', () => {
 expect(as_yau('G')).toEqual(
   new Float64Array([0, 3 ** 0.5 / 2, 0, -0.5]),
 );
});

test('test yau of C', () => {
 expect(as_yau('C')).toEqual(
   new Float64Array([0, 3 ** 0.5 / 2, 0, 0.5]),
 );
});

test('test yau of ATGC', () => {
 expect(as_yau('ATGC')).toEqual(
   new Float64Array[0, 0.5, 1, 1 + 3 ** 0.5 / 2, 1 + 2 * (3 ** 0.5 / 2), 0, -(3 ** 0.5 / 2), 0, -0.5, 0],
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

     // we know the last x value will be the number of
     // A/T/U bases * 0.5 plus the number of G/C bases * sqrt(3)/2
     expect(
       atu_match_count * 0.5 + gc_match_count * (3 ** 0.5 / 2),
     ).toBeCloseTo(as_yau(s)[length + 1]);
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

     expect(
       atu_match_count * (3 ** 0.5 / 2) + gc_match_count * 0.5,
     ).toBeCloseTo(as_yau(s)[2 * length + 2]);
   }),
 );
});

test('test yau length', () => {
 fc.assert(
   fc.property(dna, (s) => {
     let t = yau(s);
     expect(t.length).toEqual(s * 2 + 2)
   }),
 );
});

test('throws on non-ATGCU', () => {
 expect(() => {
   as_yau('NAN');
 }).toThrow();
});
