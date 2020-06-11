import * as fc from 'fast-check';
import { squiggle } from '../dnaviz';

test('test squiggle of A', () => {
  expect(squiggle('A')).toEqual([
    [0, 0.5, 1],
    [0, 0.5, 0],
  ]);
});

test('test squiggle of T', () => {
  expect(squiggle('T')).toEqual([
    [0, 0.5, 1],
    [0, -0.5, -1],
  ]);
});

test('test squiggle of G', () => {
  expect(squiggle('G')).toEqual([
    [0, 0.5, 1],
    [0, 0.5, 1],
  ]);
});

test('test squiggle of C', () => {
  expect(squiggle('C')).toEqual([
    [0, 0.5, 1],
    [0, -0.5, 0],
  ]);
});

test('test squiggle of invlid', () => {
  expect(squiggle('N')).toEqual([
    [0, 0.5, 1],
    [0, 0, 0],
  ]);
});

test('test squiggle of ATG', () => {
  expect(squiggle('ATG')).toEqual([
    [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
    [0, 0.5, 0, -0.5, -1.0, -0.5, 0.0],
  ]);
});

test('test squiggle of TTC', () => {
  expect(squiggle('TTC')).toEqual([
    [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0],
    [0, -0.5, -1.0, -1.5, -2.0, -2.5, -2.0],
  ]);
});

test('test squiggle length', () => {
  fc.assert(
    fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 10000), (s) => {
      expect(squiggle(s)[0].length).toBe(squiggle(s)[1].length)
      expect(squiggle(s)[0].length == 2 * s.length + 1).toBe(true);
    }),
  );
});

// needs extra one, starting coord is always the origin (0, 0)
