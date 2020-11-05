const fc = require('fast-check');

const dna2 = fc.stringOf(
  fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
  2,
  20,
);

const {
  __alloc,
  __retain,
  __release,
  memory,
  x_qi,
  y_qi,
  x_randic,
  y_randic
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

function as_qi(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_qi(seq.length));
 const yPtr = __retain(y_qi(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(inStrPtr);
 __release(xPtr);
 __release(yPtr);
 return [x, y];
}

function as_randic(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_randic(seq.length));
 const yPtr = __retain(y_randic(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(inStrPtr);
 __release(xPtr);
 __release(yPtr);
 return [x, y];
}

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

test('test randic', () => {
  fc.assert(
    fc.property(
      fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
      (s) => {
        for (let i = 0; i < s.length; i++) {
          const actual = randicKey[s[i]];
          const expected = as_randic(s[i])[1][0];
          expect(actual).toEqual(expected);
        }
      },
    ),
  );
});

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
test('test qi', () => {
  fc.assert(
    fc.property(dna2, (s) => {
      for (let i = 0; i < s.length - 1; i++) {
        s = s.toUpperCase();
        let S_1 = s[i];
        let S_2 = s[i + 1];
        if (S_1 === 'U') {
          S_1 = 'T';
        } else if (S_2 === 'U') {
          S_2 = 'T';
        }

        const actual = qiKey[S_1 + S_2];
        const expected = as_qi(s[i] + s[i + 1])[1][0];
        expect(actual).toEqual(expected);
      }
    }),
  );
});

console.log(as_qi("ATGC"))
console.log(as_randic("ATGC"))