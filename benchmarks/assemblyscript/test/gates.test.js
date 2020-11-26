const fc = require('fast-check');
const dna = require('./dna');
const { as_gates } = require('../index');
const expect = require('chai').expect;

describe('gates', () => {
  describe('static', () => {
    it('test gates of A', () => {
      expect(as_gates('A')).to.deep.equal(new Float64Array([0, 0, 0, -1]));
    });

    it('test gates of T', () => {
      expect(as_gates('T')).to.deep.equal(new Float64Array([0, 0, 0, 1]));
    });

    it('test gates of G', () => {
      expect(as_gates('G')).to.deep.equal(new Float64Array([0, 1, 0, 0]));
    });

    it('test gates of C', () => {
      expect(as_gates('C')).to.deep.equal(new Float64Array([0, -1, 0, 0]));
    });

    it('test basic', () => {
      expect(as_gates('ATGC')).to.deep.equal(
        new Float64Array([0, 0, 0, 1, 0, 0, -1, 0, 0, 0]),
      );
    });

    it('throws on non-ATGCU', () => {
      expect(() => {
        as_gates('NAN');
      }).to.throw();
    });
  });
  describe('property-based', () => {
    it('test gates endpoints', () => {
      fc.assert(
        fc.property(dna, (s) => {
          // counts the number of each base
          // if count == 0 then it is assigned an empty array
          let output = as_gates(s);

          let g_count = s.match(/[Gg]/g) || [];
          let c_count = s.match(/[Cc]/g) || [];
          let tu_count = s.match(/[TtUu]/g) || [];
          let a_count = s.match(/[Aa]/g) || [];

          //"If the function n(Z) denotes the number of occurrences of nucleotide Z
          // in a given sequence, the end-point of the sequence lies at coordinate
          // position [(n(G) - n(C)), (n(T) - n(A))]" (Gates, J. theor. Biol. 1986)

          expect(g_count.length - c_count.length).to.equal(output[s.length]);
          expect(tu_count.length - a_count.length).to.equal(
            output[2 * s.length + 1],
          );
        }),
      );
    });
  });
});
