const fs = require('fs');
const loader = require('@assemblyscript/loader');
const imports = {
  /* imports go here */
};
const wasmModule = loader.instantiateSync(
  fs.readFileSync(__dirname + '/build/optimized.wasm'),
  imports,
);
// module.exports = wasmModule.exports.exports;

const {
  __retain,
  __newString,
  __getFloat64Array,
  __release,
} = wasmModule.exports;

module.exports.as_yau = function as_yau(seq) {
  const inStrPtr = __retain(__newString(seq));
  const outArrPtr = wasmModule.exports.yau(inStrPtr);
  const resultArr = __getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
};

module.exports.as_qi = function as_qi(seq) {
  const inStrPtr = __retain(__newString(seq));
  const xPtr = wasmModule.exports.x_qi(seq.length);
  const yPtr = wasmModule.exports.y_qi(inStrPtr);
  const x = __getFloat64Array(xPtr);
  const y = __getFloat64Array(yPtr);
  // console.log(y);
  __release(xPtr);
  __release(yPtr);
  __release(inStrPtr);
  return [x, y];
};

module.exports.as_yau_bp = function as_yau_bp(seq) {
  const inStrPtr = __retain(__newString(seq));
  const xPtr = wasmModule.exports.x_yau_bp(seq.length);
  const yPtr = wasmModule.exports.y_yau_bp(inStrPtr);
  const x = __getFloat64Array(xPtr);
  const y = __getFloat64Array(yPtr);
  __release(xPtr);
  __release(yPtr);
  __release(inStrPtr);
  return [x, y];
};

module.exports.as_randic = function as_randic(seq) {
  const inStrPtr = __retain(__newString(seq));
  const xPtr = wasmModule.exports.x_randic(seq.length);
  const yPtr = wasmModule.exports.y_randic(inStrPtr);
  const x = __getFloat64Array(xPtr);
  const y = __getFloat64Array(yPtr);
  __release(xPtr);
  __release(yPtr);
  __release(inStrPtr);
  return [x, y];
};

module.exports.as_squiggle_two_array_output = function as_squiggle_two_array_output(
  seq,
) {
  const inStrPtr = __retain(__newString(seq));
  const xPtr = wasmModule.exports.x_squiggle(seq.length);
  const yPtr = wasmModule.exports.y_squiggle(inStrPtr);
  const x = __getFloat64Array(xPtr);
  const y = __getFloat64Array(yPtr);
  __release(xPtr);
  __release(yPtr);
  __release(inStrPtr);
  return [x, y];
};

module.exports.as_squiggle = function as_squiggle(seq) {
  const inStrPtr = __retain(__newString(seq));
  const outArrPtr = wasmModule.exports.squiggle(inStrPtr);
  const resultArr = __getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
};

module.exports.as_gates = function as_gates(seq) {
  const inStrPtr = __retain(__newString(seq));
  const outArrPtr = wasmModule.exports.gates(inStrPtr);
  const resultArr = __getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
};
