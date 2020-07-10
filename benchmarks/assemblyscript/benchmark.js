const dna = require("dnaviz"); // imports dnaviz library
const Benchmark = require("benchmark");
const {
  __alloc,
  __retain,
  __release,
  memory,
  yau,
  squiggle,
  yau_bp
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

function as_squiggle(seq) {
  const inStrPtr = __retain(__allocString(seq)); // creates pointer for sequence
  const outArrPtr = squiggle(inStrPtr, seq.length); // creates pointer for result
  const resultArr = getFloat64Array(outArrPtr); // copies the array values from outArrPtr into an array
  __release(outArrPtr);
  __release(inStrPtr); // removes pointers from module memory
  return resultArr;
}

function as_yau(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = yau(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
}

function as_yau_bp(seq) {
  const inStrPtr = __retain(__allocString(seq));
  const outArrPtr = yau_bp(inStrPtr, seq.length);
  const resultArr = getFloat64Array(outArrPtr);
  __release(outArrPtr);
  __release(inStrPtr);
  return resultArr;
}

const methods = [
  dna.squiggle, as_squiggle,
  dna.yau,      as_yau,
  dna.yau_bp,   as_yau_bp
]

const seq_10_000     = randomSeq(10000);
const seq_100_000    = randomSeq(100000);
const seq_1_000_000  = randomSeq(1000000);
const seq_10_000_000 = randomSeq(10000000);

new Benchmark.Suite()
.add(methods[0].name + ' 10_000', () => { methods[0](seq_10_000) })
.add(methods[1].name + ' 10_000', () => { methods[1](seq_10_000) })
.add(methods[2].name + ' 10_000', () => { methods[2](seq_10_000) })
.add(methods[3].name + ' 10_000', () => { methods[3](seq_10_000) })
.add(methods[4].name + ' 10_000', () => { methods[4](seq_10_000) })
.add(methods[5].name + ' 10_000', () => { methods[5](seq_10_000) })

.add(methods[0].name + ' 100_000', () => { methods[0](seq_100_000) })
.add(methods[1].name + ' 100_000', () => { methods[1](seq_100_000) })
.add(methods[2].name + ' 100_000', () => { methods[2](seq_100_000) })
.add(methods[3].name + ' 100_000', () => { methods[3](seq_100_000) })
.add(methods[4].name + ' 100_000', () => { methods[4](seq_100_000) })
.add(methods[5].name + ' 100_000', () => { methods[5](seq_100_000) })

.add(methods[0].name + ' 1_000_000', () => { methods[0](seq_1_000_000) })
.add(methods[1].name + ' 1_000_000', () => { methods[1](seq_1_000_000) })
.add(methods[2].name + ' 1_000_000', () => { methods[2](seq_1_000_000) })
.add(methods[3].name + ' 1_000_000', () => { methods[3](seq_1_000_000) })
.add(methods[4].name + ' 1_000_000', () => { methods[4](seq_1_000_000) })
.add(methods[5].name + ' 1_000_000', () => { methods[5](seq_1_000_000) })

.add(methods[0].name + ' 10_000_000', () => { methods[0](seq_10_000_000) })
.add(methods[1].name + ' 10_000_000', () => { methods[1](seq_10_000_000) })
.add(methods[2].name + ' 10_000_000', () => { methods[2](seq_10_000_000) })
.add(methods[3].name + ' 10_000_000', () => { methods[3](seq_10_000_000) })
.add(methods[4].name + ' 10_000_000', () => { methods[4](seq_10_000_000) })
.add(methods[5].name + ' 10_000_000', () => { methods[5](seq_10_000_000) })

.on("cycle", event => {
  console.log(String(event.target));
})

.on("complete", function () {
  console.log('Fastest is ' + this.filter('fastest').map('name'));
})

.run();