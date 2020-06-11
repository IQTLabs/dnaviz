import * as fc from 'fast-check';
export const dna = fc.stringOf(
  fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'),
  1,
  10000,
);
