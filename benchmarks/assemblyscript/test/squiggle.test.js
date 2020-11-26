const fc = require('fast-check');
const expect = require('chai').expect;
const { as_squiggle_two_array_output } = require('../index');
const dna = require('./dna');

describe('squiggle', () => {
  describe('static', () => {
    it('test squiggle of ATGC', () => {
      expect(as_squiggle_two_array_output('ATGC')).to.deep.equal([
        new Float64Array([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4]),
        new Float64Array([0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]),
      ]);
    });

    it('test squiggle of A', () => {
      expect(as_squiggle_two_array_output('A')).to.deep.equal([
        new Float64Array([0, 0.5, 1]),
        new Float64Array([0, 0.5, 0]),
      ]);
    });

    it('test squiggle of T', () => {
      expect(as_squiggle_two_array_output('T')).to.deep.equal([
        new Float64Array([0, 0.5, 1]),
        new Float64Array([0, -0.5, -1]),
      ]);
    });

    it('test squiggle of G', () => {
      expect(as_squiggle_two_array_output('G')).to.deep.equal([
        new Float64Array([0, 0.5, 1]),
        new Float64Array([0, 0.5, 1]),
      ]);
    });

    it('test squiggle of C', () => {
      expect(as_squiggle_two_array_output('C')).to.deep.equal([
        new Float64Array([0, 0.5, 1]),
        new Float64Array([0, -0.5, 0]),
      ]);
    });
  });
  describe('property-based', () => {
    it('test squiggle length', () => {
      fc.assert(
        fc.property(dna, (s) => {
          expect(as_squiggle_two_array_output(s)[0].length).to.equal(
            as_squiggle_two_array_output(s)[1].length,
          );
          expect(
            as_squiggle_two_array_output(s)[0].length == 2 * s.length + 1,
          ).to.equal(true);
        }),
      );
    });

    it('check case insensitivity', () => {
      fc.assert(
        fc.property(dna, (s) => {
          expect(as_squiggle_two_array_output(s.toLowerCase())).to.deep.equal(
            as_squiggle_two_array_output(s),
          );
        }),
      );
    });

    it('check non-ATGCU cases', () => {
      fc.assert(
        fc.property(fc.string({ maxLength: 100 }), (s) => {
          let tu_matches = s.match(/[TtUu]/g) || [];
          // let a_matches = s.match(/[Aa]/g) || [];
          let g_matches = s.match(/[Gg]/g) || [];
          // let c_matches = s.match(/[Cc]/g) || [];
          let output = as_squiggle_two_array_output(s)[1];

          expect(g_matches.length - tu_matches.length).to.equal(
            output[output.length - 1],
          );
        }),
      );
    });
  });
});
