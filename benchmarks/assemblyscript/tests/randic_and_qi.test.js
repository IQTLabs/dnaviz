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
  x_qi,
  y_qi,
  x_randic,
  y_randic
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

function as_qi(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = x_qi(seq.length);
 const yPtr = y_qi(inStrPtr, seq.length);
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 return [x, y];
}

function as_randic(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = x_randic(seq.length);
 const yPtr = y_randic(inStrPtr, seq.length);
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 return [x, y];
}
