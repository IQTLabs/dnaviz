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
  gates
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

function as_gates(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const outArrPtr = gates(inStrPtr, seq.length);
 const resultArr = getFloat64Array(outArrPtr);
 __release(outArrPtr);
 __release(inStrPtr);
 return resultArr;
}

test('test gates of A', () => {
 expect(as_gates('A')).toEqual(
   new Float64Array([0, 0, 0, -1])
 );
});

test('test gates of T', () => {
 expect(as_gates('T')).toEqual(
  new Float64Array([0, 0, 0, 1])
 );
});

test('test gates of G', () => {
 expect(as_gates('G')).toEqual(
   new Float64Array([0, 1, 0, 0])
 );
});

test('test gates of C', () => {
 expect(as_gates('C')).toEqual(
  new Float64Array([0, -1, 0, 0])
 );
});

test('test basic', () => {
 expect(as_gates('ATGC')).toEqual(
   new Float64Array([0, 0, 0, 1, 0, 0, -1, 0, 0, 0])
 );
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
       as_gates(s)[length + 1],
     );
     expect(tu_count.length - a_count.length).toBe(
       as_gates(s)[2 * length + 2],
     );
   }),
 );
});

test('throws on non-ATGCU', () => {
 expect(() => {
   as_gates('NAN');
 }).toThrow();
});