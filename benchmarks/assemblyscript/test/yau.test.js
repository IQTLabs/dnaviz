const fc = require('fast-check');
const dna = require('./dna');
const expect = require('chai').expect;
const { as_yau } = require('../index');
const chai = require('chai');
chai.use(require('chai-roughly'));

describe('yau-bp', () => {
  describe('static', () => {
    it('test yau of A', () => {
      expect(as_yau('A')).to.deep.equal(
        new Float64Array([0, 0.5, 0, 3 ** 0.5 / -2]),
      );
    });
    it('test yau of T', () => {
      expect(as_yau('T')).to.deep.equal(
        new Float64Array([0, 0.5, 0, 3 ** 0.5 / 2]),
      );
    });
    it('test yau of U', () => {
      expect(as_yau('U')).to.deep.equal(
        new Float64Array([0, 0.5, 0, 3 ** 0.5 / 2]),
      );
    });
    it('test yau of G', () => {
      expect(as_yau('G')).to.deep.equal(
        new Float64Array([0, 3 ** 0.5 / 2, 0, -0.5]),
      );
    });
    it('test yau of C', () => {
      expect(as_yau('C')).to.deep.equal(
        new Float64Array([0, 3 ** 0.5 / 2, 0, 0.5]),
      );
    });
    it('test yau of ATGC', () => {
      expect(as_yau('ATGC')).to.deep.equal(
        new Float64Array([
          0,
          0.5,
          1,
          1 + 3 ** 0.5 / 2,
          1 + 2 * (3 ** 0.5 / 2),
          0,
          -(3 ** 0.5 / 2),
          0,
          -0.5,
          0,
        ]),
      );
    });
    it('throws on non-ATGCU', () => {
      expect(() => {
        as_yau('NAN');
      }).to.throw();
    });
  });
  describe('property-based', () => {
    it('check case insensitivity', () => {
      fc.assert(
        fc.property(dna, (s) => {
          expect(as_yau(s)).to.deep.equal(as_yau(s.toLowerCase()));
        }),
      );
    });
    it('test last x value correctness for yau', () => {
      fc.assert(
        fc.property(dna, (s) => {
          // how many As, Ts, and Us are there?
          let atu_matches = s.match(/[AaTtUu]/g) || [];
          let atu_match_count = atu_matches.length;
          // how many Gs and Cs are there?
          let gc_matches = s.match(/[GgCc]/g) || [];
          let gc_match_count = gc_matches.length;
          let output = as_yau(s);
          // we know the last x value will be the number of
          // A/T/U bases * 0.5 plus the number of G/C bases * sqrt(3)/2
          expect(
            atu_match_count * 0.5 + gc_match_count * (3 ** 0.5 / 2),
          ).to.roughly.deep.equal(output[s.length]);
        }),
      );
    });
    it('test y value correctness for yau', () => {
      fc.assert(
        fc.property(dna, (s) => {
          let tu_matches = s.match(/[TtUu]/g) || [];
          let a_matches = s.match(/[Aa]/g) || [];
          let atu_match_count = tu_matches.length - a_matches.length;
          let g_matches = s.match(/[Gg]/g) || [];
          let c_matches = s.match(/[Cc]/g) || [];
          let gc_match_count = -g_matches.length + c_matches.length;
          let output = as_yau(s);
          expect(
            atu_match_count * (3 ** 0.5 / 2) + gc_match_count * 0.5,
          ).to.roughly.deep.equal(output[2 * s.length + 1]);
        }),
      );
    });
    it('test yau length', () => {
      fc.assert(
        fc.property(dna, (s) => {
          let t = as_yau(s);
          let w = s.length * 2 + 2;
          expect(t.length).to.equal(w);
        }),
      );
    });
  });
});
