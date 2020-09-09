// import * as fc from 'fast-check';

const {
 __alloc,
 __retain,
 __release,
 memory,
 x_squiggle,
 y_squiggle
} = require("./index");

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
 const bufPtr = U32[ptr + 4 >>> 2];
 return new Float64Array(
  buffer,
  bufPtr,
  U32[bufPtr - 4 >>> 2] >>> 3
 );
}

function squiggle(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = x_squiggle(seq.length);
 const yPtr = y_squiggle(inStrPtr, seq.length);
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 return [x, y];
}

console.log(squiggle('ATGC'))


test('test squiggle of ATGC', () => {
 expect(squiggle('ATGC')).toEqual([
  new Float64Array([
      0, 0.5,   1, 1.5, 2,
    2.5,   3, 3.5,   4
  ]),
  new Float64Array ([
     0,  0.5, 0, -0.5,
    -1, -0.5, 0, -0.5,
     0
  ])
]);
});