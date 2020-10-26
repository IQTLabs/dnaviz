const dna = require("dnaviz"); // imports dnaviz library
const Benchmark = require("benchmark");
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
  y_randic
} = require("./index");
// imports retain (returns a managed object's pointer, ensure no premature collection),
// alloc (allocates classes a unique id),
// release (drops retained ptrs from module memory),
// and memory from AssemblyScript API

function randomSeq(length) {
  var result = '';
  var characters = 'ATGC';
  var charactersLength = characters.length;
  for (let i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

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
  const bufPtr = U32[ptr + 4 >>> 2];
  return new Float64Array(
    buffer,
    bufPtr,
    U32[bufPtr - 4 >>> 2] >>> 3
  );
} // Copies the modules array values into a JS array

function as_yau(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = yau(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
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

function as_yau_bp(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const xPtr = x_yau_bp(seq.length);
  const yPtr = y_yau_bp(inStrPtr, seq.length);
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

function as_squiggle_two_array_output(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const xPtr = x_squiggle(seq.length);
  const yPtr = y_squiggle(inStrPtr, seq.length);
  const x = getFloat64Array(xPtr);
  const y = getFloat64Array(yPtr);
  __release(xPtr);
  __release(yPtr);
  return [x, y];
}

function as_squiggle(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = squiggle(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
}

function as_gates(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = gates(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
}

const seq_10_000 = randomSeq(10000);
const seq_100_000 = randomSeq(100000);
const seq_1_000_000 = randomSeq(1000000);
const seq_10_000_000 = randomSeq(10000000);

new Benchmark.Suite()
  
  .add("as squiggle 10,000", () => { as_squiggle(seq_10_000) })
  .add("as squiggle 100,000", () => { as_squiggle(seq_100_000) })
  .add("as squiggle 1,000,000", () => { as_squiggle(seq_1_000_000) })

  .add("as squiggle (two output array) 10,000", () => { as_squiggle_two_array_output(seq_10_000) })
  .add("as squiggle (two output array) 100,000", () => { as_squiggle_two_array_output(seq_100_000) })
  .add("as squiggle (two output array) 1,000,000", () => { as_squiggle_two_array_output(seq_1_000_000) })

  .add("ts squiggle 10,000", () => { dna.squiggle(seq_10_000) })
  .add("ts squiggle 100,000", () => { dna.squiggle(seq_100_000) })
  .add("ts squiggle 1,000,000", () => { dna.squiggle(seq_1_000_000) })

  .add("as gates 10,000", () => { as_gates(seq_10_000) })
  .add("as gates 100,000", () => { as_gates(seq_100_000) })
  .add("as gates 1,000,000", () => { as_gates(seq_1_000_000) })

  .add("ts gates 10,000", () => { dna.gates(seq_10_000) })
  .add("ts gates 100,000", () => { dna.gates(seq_100_000) })
  .add("ts gates 1,000,000", () => { dna.gates(seq_1_000_000) })

  .add("as qi 10,000", () => { as_qi(seq_10_000) })
  .add("as qi 100,000", () => { as_qi(seq_100_000) })
  .add("as qi 1,000,000", () => { as_qi(seq_1_000_000) })

  .add("ts qi 10,000", () => { dna.qi(seq_10_000) })
  .add("ts qi 100,000", () => { dna.qi(seq_100_000) })
  .add("ts qi 1,000,000", () => { dna.qi(seq_1_000_000) })

  .add("as yau-bp 10,000", () => { as_yau_bp(seq_10_000) })
  .add("as yau-bp 100,000", () => { as_yau_bp(seq_100_000) })
  .add("as yau-bp 1,000,000", () => { as_yau_bp(seq_1_000_000) })

  .add("ts yau-bp 10,000", () => { dna.yau_bp(seq_10_000) })
  .add("ts yau-bp 100,000", () => { dna.yau_bp(seq_100_000) })
  .add("ts yau-bp 1,000,000", () => { dna.yau_bp(seq_1_000_000) })

  .add("as yau 10,000", () => { as_yau(seq_10_000) })
  .add("as yau 100,000", () => { as_yau(seq_100_000) })
  .add("as yau 1,000,000", () => { as_yau(seq_1_000_000) })

  .add("ts yau 10,000", () => { dna.yau(seq_10_000) })
  .add("ts yau 100,000", () => { dna.yau(seq_100_000) })
  .add("ts yau 1,000,000", () => { dna.yau(seq_1_000_000) })

  .add("as randic 10,000", () => { as_randic(seq_10_000) })
  .add("as randic 100,000", () => { as_randic(seq_100_000) })
  .add("as randic 1,000,000", () => { as_randic(seq_1_000_000) })

  .add("ts randic 10,000", () => { dna.randic(seq_10_000) })
  .add("ts randic 100,000", () => { dna.randic(seq_100_000) })
  .add("ts randic 1,000,000", () => { dna.randic(seq_1_000_000) })

  .on("cycle", event => {
    console.log(String(event.target));
  })

  .on("complete", function () {
    console.log('Fastest is ' + this.filter('fastest').map('name'));
  })

  .run();