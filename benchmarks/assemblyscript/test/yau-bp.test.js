const fc = require('fast-check');
const expect = require('chai').expect;
const dna = require('./dna');
const { as_yau_bp } = require('../index');

describe('yau-bp', () => {
  describe('static', () => {
    it('test yau-BP of A', () => {
      expect(as_yau_bp('A')).to.deep.equal([
        new Float64Array([0, 1]),
        new Float64Array([0, -1.0]),
      ]);
    });
    it('test yau-BP of T', () => {
      expect(as_yau_bp('T')).to.deep.equal([
        new Float64Array([0, 1]),
        new Float64Array([0, 1.0]),
      ]);
    });
    it('test yau-BP of G', () => {
      expect(as_yau_bp('G')).to.deep.equal([
        new Float64Array([0, 1]),
        new Float64Array([0, -0.5]),
      ]);
    });
    it('test yau-BP of C', () => {
      expect(as_yau_bp('C')).to.deep.equal([
        new Float64Array([0, 1]),
        new Float64Array([0, 0.5]),
      ]);
    });
    it('test yau_bp of basic', () => {
      expect(as_yau_bp('ATGC')).to.deep.equal([
        new Float64Array([0, 1, 2, 3, 4]),
        new Float64Array([0, -1, 0, -0.5, 0]),
      ]);
    });
    it('throws on non-ATGCU', () => {
      expect(() => {
        as_yau_bp('NAN');
      }).to.throw();
    });
  });
  describe('property-based', () => {
    it('test x value correctness for yau-bp', () => {
      fc.assert(
        fc.property(dna, (s) => {
          let output = as_yau_bp(s);
          // how many characters are there? if none, assigned 0
          let atcgu_matches = s.match(/[AaTtCcGgUu]/g) || [];
          let atcgu_match_count = atcgu_matches.length;
          expect(atcgu_match_count * 1).to.equal(output[0][s.length]);
        }),
      );
    });
    it('test y value correctness for yau-bp', () => {
      fc.assert(
        fc.property(dna, (s) => {
          let output = as_yau_bp(s);
          // because a's and t's are assigned different y-values, two variables are needed
          let tu_matches = s.match(/[TtUu]/g) || [];
          let a_matches = s.match(/[Aa]/g) || [];
          let atu_match_count = tu_matches.length - a_matches.length;
          let g_matches = s.match(/[Gg]/g) || [];
          let c_matches = s.match(/[Cc]/g) || [];
          let gc_match_count = -g_matches.length + c_matches.length;
          //  |a\t\u| = 1, |g\c| = 0.5
          expect(atu_match_count + gc_match_count * 0.5).to.equal(
            output[1][s.length],
          );
        }),
      );
    });
    it('test yau-bp y array length', () => {
      fc.assert(
        fc.property(dna, (s) => {
          expect(as_yau_bp(s)[1].length == s.length + 1).to.equal(true);
        }),
      );
    });

    it('check case insensitivity', () => {
      fc.assert(
        fc.property(dna, (s) => {
          expect(as_yau_bp(s)).to.deep.equal(as_yau_bp(s.toLowerCase()));
        }),
      );
    });
  });
});
