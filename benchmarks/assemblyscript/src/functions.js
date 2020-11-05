const {
 __alloc,
 __retain,
 __release,
 memory,
 squiggle,
 x_squiggle,
 y_squiggle,
 gates,
 y_qi,
 x_qi,
 yau,
 x_yau_bp,
 y_yau_bp,
 x_randic,
 y_randic,
} = require('./index');

let alloc = __alloc;

function __allocString(str) {
 const length = str.length;
 const ptr = alloc(length << 1, 1);
 const U16 = new Uint16Array(memory.buffer);
 for (let i = 0, p = ptr >>> 1; i < length; ++i) {
  U16[p + i] = str.charCodeAt(i);
 }
 return ptr;
} // Places string into modules memory. Assigns and returns a pointer

function getFloat64Array(ptr) {
 const buffer = memory.buffer;
 const U32 = new Uint32Array(buffer);
 const bufPtr = U32[(ptr + 4) >>> 2];
 return new Float64Array(buffer, bufPtr, U32[(bufPtr - 4) >>> 2] >>> 3);
} // Copies the modules array values into a JS array

module.exports = function as_yau(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const outArrPtr = __retain(yau(inStrPtr, seq.length));
 const resultArr = getFloat64Array(outArrPtr);
 __release(outArrPtr);
 __release(inStrPtr);
 return resultArr;
}

module.exports = function as_qi(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_qi(seq.length));
 const yPtr = __retain(y_qi(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 __release(inStrPtr);
 return [x, y];
}

module.exports = function as_yau_bp(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_yau_bp(seq.length));
 const yPtr = __retain(y_yau_bp(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 __release(inStrPtr);
 return [x, y];
}

module.exports = function as_randic(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_randic(seq.length));
 const yPtr = __retain(y_randic(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 __release(inStrPtr);
 return [x, y];
}

module.exports = function as_squiggle_two_array_output(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const xPtr = __retain(x_squiggle(seq.length));
 const yPtr = __retain(y_squiggle(inStrPtr, seq.length));
 const x = getFloat64Array(xPtr);
 const y = getFloat64Array(yPtr);
 __release(xPtr);
 __release(yPtr);
 __release(inStrPtr);
 return [x, y];
}

module.exports = function as_squiggle(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const outArrPtr = __retain(squiggle(inStrPtr, seq.length));
 const resultArr = getFloat64Array(outArrPtr);
 __release(outArrPtr);
 __release(inStrPtr);
 return resultArr;
}

module.exports = function as_gates(seq) {
 const inStrPtr = __retain(__allocString(seq));
 const outArrPtr = __retain(gates(inStrPtr, seq.length));
 const resultArr = getFloat64Array(outArrPtr);
 __release(outArrPtr);
 __release(inStrPtr);
 return resultArr;
}

