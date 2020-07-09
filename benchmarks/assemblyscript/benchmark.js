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

const STRING_ID = 1;
const ARRAYBUFFERVIEW_DATASTART_OFFSET = 4;
const SIZE_OFFSET = -4;

function randomSeq(length) {
  var result = '';
  var characters = 'ATGC';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

const my_seq = randomSeq(10000); // generates random sequence

let alloc = __alloc;
const suite = new Benchmark.Suite();
function __allocString(str) {
  const length = str.length;
  const ptr = alloc(length << 1, STRING_ID);
  const U16 = new Uint16Array(memory.buffer);
  for (var i = 0, p = ptr >>> 1; i < length; ++i) {
    U16[p + i] = str.charCodeAt(i);
  }
  return ptr;
} // Places string into modules memory. Assigns and returns a pointer

function getTypedArrayView(Type, alignLog2, ptr) {
  const buffer = memory.buffer;
  const U32 = new Uint32Array(buffer);
  const bufPtr = U32[(ptr + ARRAYBUFFERVIEW_DATASTART_OFFSET) >>> 2];
  return new Type(
    buffer,
    bufPtr,
    U32[(bufPtr + SIZE_OFFSET) >>> 2] >>> alignLog2
  );
} // Gets a view of the values of an array within a module's mem

function getFloat64Array(ptr) {
  return new Float64Array(getTypedArrayView(Float64Array, 3, ptr));
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

const methods = [dna.squiggle, as_squiggle, dna.yau, as_yau, dna.yau_bp, as_yau_bp]
const my_seqs = [10000, 100000, 1000000];

for (let j = 0; j < my_seqs.length; j++) {
  for (let i = 0; i < methods.length; i++) {
    let seq = randomSeq(my_seqs[j]);
    suite
      .add(methods[i].name + ' ' + my_seqs[j], function () {
        methods[i](seq)
      })
      .on("complete", function (event) {
        console.log(String(event.target));
      })
      .run();
  }
}