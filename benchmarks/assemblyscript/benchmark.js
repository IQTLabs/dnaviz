const dna = require('dnaviz'); // imports dnaviz library
const Benchmark = require('benchmark');
const {
  as_squiggle,
  as_squiggle_two_array_output,
  as_yau,
  as_yau_bp,
  as_randic,
  as_qi,
  as_gates
} = require("./src/functions.js")

function randomSeq(length) {
  var result = '';
  var characters = 'ATGC';
  var charactersLength = characters.length;
  for (let i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

const seq_10_000 = randomSeq(10000);
const seq_100_000 = randomSeq(100000);
const seq_1_000_000 = randomSeq(1000000);
const seq_10_000_000 = randomSeq(10000000);

new Benchmark.Suite()

  .add('as squiggle 10,000', () => {
    as_squiggle(seq_10_000);
  })
  .add('as squiggle 100,000', () => {
    as_squiggle(seq_100_000);
  })
  .add('as squiggle 1,000,000', () => {
    as_squiggle(seq_1_000_000);
  })

  .add('as squiggle (two output array) 10,000', () => {
    as_squiggle_two_array_output(seq_10_000);
  })
  .add('as squiggle (two output array) 100,000', () => {
    as_squiggle_two_array_output(seq_100_000);
  })
  .add('as squiggle (two output array) 1,000,000', () => {
    as_squiggle_two_array_output(seq_1_000_000);
  })

  .add('ts squiggle 10,000', () => {
    dna.squiggle(seq_10_000);
  })
  .add('ts squiggle 100,000', () => {
    dna.squiggle(seq_100_000);
  })
  .add('ts squiggle 1,000,000', () => {
    dna.squiggle(seq_1_000_000);
  })

  .add('as gates 10,000', () => {
    as_gates(seq_10_000);
  })
  .add('as gates 100,000', () => {
    as_gates(seq_100_000);
  })
  .add('as gates 1,000,000', () => {
    as_gates(seq_1_000_000);
  })

  .add('ts gates 10,000', () => {
    dna.gates(seq_10_000);
  })
  .add('ts gates 100,000', () => {
    dna.gates(seq_100_000);
  })
  .add('ts gates 1,000,000', () => {
    dna.gates(seq_1_000_000);
  })

  .add('as qi 10,000', () => {
    as_qi(seq_10_000);
  })
  .add('as qi 100,000', () => {
    as_qi(seq_100_000);
  })
  .add('as qi 1,000,000', () => {
    as_qi(seq_1_000_000);
  })

  .add('ts qi 10,000', () => {
    dna.qi(seq_10_000);
  })
  .add('ts qi 100,000', () => {
    dna.qi(seq_100_000);
  })
  .add('ts qi 1,000,000', () => {
    dna.qi(seq_1_000_000);
  })

  .add('as yau-bp 10,000', () => {
    as_yau_bp(seq_10_000);
  })
  .add('as yau-bp 100,000', () => {
    as_yau_bp(seq_100_000);
  })
  .add('as yau-bp 1,000,000', () => {
    as_yau_bp(seq_1_000_000);
  })

  .add('ts yau-bp 10,000', () => {
    dna.yau_bp(seq_10_000);
  })
  .add('ts yau-bp 100,000', () => {
    dna.yau_bp(seq_100_000);
  })
  .add('ts yau-bp 1,000,000', () => {
    dna.yau_bp(seq_1_000_000);
  })

  .add('as yau 10,000', () => {
    as_yau(seq_10_000);
  })
  .add('as yau 100,000', () => {
    as_yau(seq_100_000);
  })
  .add('as yau 1,000,000', () => {
    as_yau(seq_1_000_000);
  })

  .add('ts yau 10,000', () => {
    dna.yau(seq_10_000);
  })
  .add('ts yau 100,000', () => {
    dna.yau(seq_100_000);
  })
  .add('ts yau 1,000,000', () => {
    dna.yau(seq_1_000_000);
  })

  .add('as randic 10,000', () => {
    as_randic(seq_10_000);
  })
  .add('as randic 100,000', () => {
    as_randic(seq_100_000);
  })
  .add('as randic 1,000,000', () => {
    as_randic(seq_1_000_000);
  })

  .add('ts randic 10,000', () => {
    dna.randic(seq_10_000);
  })
  .add('ts randic 100,000', () => {
    dna.randic(seq_100_000);
  })
  .add('ts randic 1,000,000', () => {
    dna.randic(seq_1_000_000);
  })

  .on('cycle', (event) => {
    console.log(String(event.target));
  })

  .on('complete', function () {
    console.log('Fastest is ' + this.filter('fastest').map('name'));
  })

  .run();
