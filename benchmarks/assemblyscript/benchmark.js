const dna = require("dnaviz"); // imports dnaviz library
const Benchmark = require("benchmark");
const {
  __alloc,
  __retain,
  __release,
  memory,
  squiggle_v2,
  squiggle_v3,
  squiggle_v1,
  x_squiggle,
  y_squiggle
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

function as_squiggle_v4(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const xPtr = x_squiggle(seq.length);
  const yPtr = y_squiggle(inStrPtr, seq.length);
  const x = getFloat64Array(xPtr);
  const y = getFloat64Array(yPtr);
  __release(xPtr);
  __release(yPtr);
  return [x, y];
}

function as_squiggle_v2(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = squiggle_v2(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
}

function as_squiggle_v3(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = squiggle_v3(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
}

function as_squiggle_v1(seq) {
  const inStrPtr = __retain(__allocString(seq)); // creates pointer for sequence
  const outArrPtr = squiggle_v1(inStrPtr, seq.length); // creates pointer for result
  const resultArr = getFloat64Array(outArrPtr); // copies the array values from outArrPtr into an array
  __release(outArrPtr);
  __release(inStrPtr); // removes pointers from module memory
  return resultArr;
}

const seq_10_000 = randomSeq(10000);
const seq_100_000 = randomSeq(100000);
const seq_1_000_000 = randomSeq(1000000);
const seq_10_000_000 = randomSeq(10000000);

new Benchmark.Suite()
  .add("Two Array Output 10,000", () => { as_squiggle_v4(seq_10_000) })
  .add("Two Array Output 100,000", () => { as_squiggle_v4(seq_100_000) })
  .add("Two Array Output 1,000,000", () => { as_squiggle_v4(seq_1_000_000) })
  // .add("Two Array Output 10,000,000", () => {as_squiggle_v4(seq_10_000_000)})

  .add("as squiggle v3 10,000", () => { as_squiggle_v3(seq_10_000) })
  .add("as squiggle v3 100,000", () => { as_squiggle_v3(seq_100_000) })
  .add("as squiggle v3 1,000,000", () => { as_squiggle_v3(seq_1_000_000) })
  // .add("as squiggle v3 10,000,000", () => {as_squiggle_v3(seq_10_000_000)})

  .add("as squiggle v2 10,000", () => { as_squiggle_v2(seq_10_000) })
  .add("as squiggle v2 100,000", () => { as_squiggle_v2(seq_100_000) })
  .add("as squiggle v2 1,000,000", () => { as_squiggle_v2(seq_1_000_000) })
  // .add("as squiggle v2 10,000,000", () => {as_squiggle_v2(seq_10_000_000)})

  .add("Max's squiggle 10,000", () => { as_squiggle_v1(seq_10_000) })
  .add("Max's squiggle 100,000", () => { as_squiggle_v1(seq_100_000) })
  .add("Max's squiggle 1,000,000", () => { as_squiggle_v1(seq_1_000_000) })
  // .add("Max's squiggle 10,000,000", () => {as_squiggle_v1(seq_10_000_000)})

  .add("ts squiggle 10,000", () => { dna.squiggle(seq_10_000) })
  .add("ts squiggle 100,000", () => { dna.squiggle(seq_100_000) })
  .add("ts squiggle 1,000,000", () => { dna.squiggle(seq_1_000_000) })
  // .add("ts squiggle 10,000,000", () => {dna.squiggle(seq_10_000_000)})

  .on("cycle", event => {
    console.log(String(event.target));
  })

  .on("complete", function () {
    console.log('Fastest is ' + this.filter('fastest').map('name'));
  })

  .run();