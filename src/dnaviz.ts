// different methods of transforming a sequence of dna into a series of coordinates for 2d visualization

// squiggle

/**
 * Generates squiggle 2D Visualization of DNA from any sequence
 *
 * @param sequence - sequence of DNA or RNA (lowercase and mixed cases are valid)
 *
 * @returns coordinates for 2d visualization of DNA based on the Squiggle algorithm
 *
 * @remarks Lee, B. D. (2018). Squiggle: a user-friendly two-dimensional DNA sequence visualization tool. *Bioinformatics*. doi:10.1093/bioinformatics/bty807.
 *
 * Example Usage
 * ```ts
 * squiggle('ATGC')
 * // returns [[0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4], [0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]]
 * ```
 *
 *
 * Squiggle’s DNA visualization method is based on the UCSC .2bit format and the Qi et. al Huffman coding method. In essence, a DNA sequence is first converted into binary using the 2bit encoding scheme that maps T to 00, C to 01, A to 10, and G to 11. The bits can be mapped as end to end vectors.
 *
 * For more information visit: https://squiggle.readthedocs.io/en/latest/methods.html#squiggle
 */
export function squiggle(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let yCoord: number = 0.0;

  for (const character of sequence) {
    x.push(x[x.length - 1] + 0.5);
    x.push(x[x.length - 1] + 0.5);
    if (character === 'A') {
      y.push(yCoord + 0.5);
      y.push(yCoord);
    } else if (character === 'C') {
      y.push(yCoord - 0.5);
      y.push(yCoord);
    } else if (character === 'T' || character === 'U') {
      y.push(yCoord - 0.5);
      y.push(yCoord - 1);
      yCoord -= 1.0;
    } else if (character === 'G') {
      y.push(yCoord + 0.5);
      y.push(yCoord + 1);
      yCoord += 1.0;
    } else {
      y.push(yCoord);
      y.push(yCoord);
    }
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}

// yau
/**
 * Generates yau 2D Visualization of DNA from any sequence
 *
 * @param sequence - sequence of DNA or RNA (lowercase and mixed cases are valid)
 *
 * @returns coordinates for 2d visualization of DNA based on the Yau algorithm
 *
 * @remarks Yau, S. S., Wang, J., Niknejad, A., Lu, C., Jin, N., & Ho, Y. K. (2003). DNA sequence representation without degeneracy. *Nucleic acids research, 31(12)*, 3078-80.
 *
 * Example Usage
 * ```ts
 * yau('ATGC')
 * // returns [[0, 0.5, 1, 1 + 3 ** 0.5 / 2, 1 + 2 * (3 ** 0.5 / 2)], [0, -(3 ** 0.5 / 2), 0, -0.5, 0]]
 * ```
 *
 *
 * Yau et. al’s method uses unit vectors with upward vectors indicating pyrimidine bases (C and T) and downward vectors indicating purine bases (A and G). Similar to Squiggle, this method has no degeneracy.
 *
 * The unit vectors are based on 30 and 60 degree values on the unit circle.
 *
 * Specifically:
 *
 * ```ts
 * A = (0.5, -3**0.5/2) // ** represents exponents in js
 * T = (0.5, 3**0.5/2)
 * C = (3**0.5/2, 0.5)
 * G = (3**0.5/2, -0.5)
 * ```
 *
 * *Warning: The x-coordinate is not equivalent to the base position
 *
 * For more information visit: https://squiggle.readthedocs.io/en/latest/methods.html#yau
 */
export function yau(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (const character of sequence) {
    if (character === 'A') {
      xCoord = xCoord + 0.5;
      yCoord = yCoord - 3 ** 0.5 / 2;
    } else if (character === 'C') {
      xCoord = xCoord + 3 ** 0.5 / 2;
      yCoord = yCoord + 0.5;
    } else if (character === 'T' || character === 'U') {
      xCoord = xCoord + 0.5;
      yCoord = yCoord + 3 ** 0.5 / 2;
    } else if (character === 'G') {
      xCoord = xCoord + 3 ** 0.5 / 2;
      yCoord = yCoord - 0.5;
    } else {
      throw new Error('non-atgcu base')
    }
    x.push(xCoord);
    y.push(yCoord);
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
// yau-bp
/**
 * Generates yau-bp 2D Visualization of DNA from any sequence
 *
 * @param sequence - sequence of DNA or RNA (lowercase and mixed cases are valid)
 *
 * @returns coordinates for 2d visualization of DNA based on the Yau-BP algorithm
 *
 * @remarks Lee, B. D. (2018). Squiggle: a user-friendly two-dimensional DNA sequence visualization tool. *Bioinformatics*. doi:10.1093/bioinformatics/bty807. Yau, S. S., Wang, J., Niknejad, A., Lu, C., Jin, N., & Ho, Y. K. (2003). DNA sequence representation without degeneracy. *Nucleic acids research*, 31(12), 3078-80.
 *
 * Example Usage
 * ```ts
 * yau_bp('ATGC')
 * // returns [[0, 1, 2, 3, 4], [0, -1, 0, -0.5, 0]]
 * ```
 *
 *
 * Unique to DNAViz is the Yau-BP method, a slight modification of Yau’s method that ensures that the x axis is equivalent to the base position. It preserves that salient feature of the method, which is the purine/pyrimidine split.
 *
 * For more information visit: https://squiggle.readthedocs.io/en/latest/methods.html#yau-bp
 */
export function yau_bp(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (const character of sequence) {
    xCoord++;
    x.push(xCoord);
    if (character === 'A') {
      yCoord = yCoord - 1;
    } else if (character === 'C') {
      yCoord = yCoord + 0.5;
    } else if (character === 'T' || character === 'U') {
      yCoord = yCoord + 1;
    } else if (character === 'G') {
      yCoord = yCoord - 0.5;
    } else {
      throw new Error('non-atgcu base')
    }
    y.push(yCoord);
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
// randic
/**
 * Generates randic 2D Visualization of DNA from any sequence
 *
 * @param sequence - sequence of DNA or RNA (lowercase and mixed cases are valid)
 *
 * @returns coordinates for 2d visualization of DNA based on the Randic algorithm
 *
 * @remarks Randić, M., Vračko, M., Lerš, N., & Plavšić, D. (2003). Novel 2-D graphical representation of DNA sequences and their numerical characterization. *Chemical Physics Letters, 368(1–2)*, 1–6. doi:10.1016/s0009-2614(02)01784-0.
 *
 * Example Usage
 * ```ts
 * randic('ATGC')
 * // returns [[0, 1, 2, 3], [3, 2, 1, 0]]
 * ```
 *
 *
 * Similar to tabalture, the Randic method assigns each base a different y-value.
 *
 * Specifically:
 *
 * ```ts
 * A = 3
 * T = 2
 * G = 1
 * C = 0
 * ```
 *
 * *This visualization method isn't well suited to long sequences
 *
 * For more information visit: https://squiggle.readthedocs.io/en/latest/methods.html#randic-and-qi
 */
export function randic(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [];
  const y: number[] = [];
  let xCoord = 0;
  const key: any = {
    A: 3,
    T: 2,
    U: 2,
    G: 1,
    C: 0,
  };
  for (const character of sequence) {
    if (character != 'A' && character != 'T' && character != 'U' && character != 'G' && character != 'C') {
      throw new Error('non-atgcu base')
    }
    x.push(xCoord);
    xCoord++;
    y.push(key[character]);
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
// qi
/**
 * Generates qi 2D Visualization of DNA from any sequence
 *
 * @param sequence - sequence of DNA or RNA (lowercase and mixed cases are valid)
 *
 * @returns coordinates for 2d visualization of DNA based on the Qi algorithm
 *
 * @remarks Qi, Z., & Qi, X. (2007). Novel 2D graphical representation of DNA sequence based on dual nucleotides. *Chemical Physics Letters, 440(1–3)*, 139–144. doi:10.1016/j.cplett.2007.03.107.
 *
 * Example Usage
 * ```ts
 * qi('ATGC')
 * // returns [[0, 1, 2], [8, 7, 11]]
 * ```
 *
 *
 * Similar to Randic, Qi maps each 2-mer in the sequence to a unique y-value. Because there are more 2-mer combinations than lone bases, Qi graphs look like randic graphs with a larger range of y-values.
 *
 * Qi Assignment Key:
 *
 * ```ts
 * AA = 12
 * AC = 4
 * GT = 6
 * AG = 0
 * CC = 13
 * CA = 5
 * CG = 10
 * TT = 15
 * GG = 14
 * GC = 11
 * AT = 8
 * GA = 1
 * TG = 7
 * TA = 9
 * TC = 3
 * CT = 2
 * ```
 *
 * For more information visit: https://squiggle.readthedocs.io/en/latest/methods.html#randic-and-qi
 */
export function qi(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [];
  const y: number[] = [];
  const key: any = {
    AA: 12,
    AC: 4,
    GT: 6,
    AG: 0,
    CC: 13,
    CA: 5,
    CG: 10,
    TT: 15,
    GG: 14,
    GC: 11,
    AT: 8,
    GA: 1,
    TG: 7,
    TA: 9,
    TC: 3,
    CT: 2,
  };
  for (let i = 0; i < sequence.length - 1; i++) {
    let S_1 = sequence[i];
    let S_2 = sequence[i + 1];
    if (S_1 != 'A' && S_1 != 'T' && S_1 != 'U' && S_1 != 'G' && S_1 != 'C') {
      throw new Error('non-atgcu base')
    } else if (S_2 != 'A' && S_2 != 'T' && S_2 != 'U' && S_2 != 'G' && S_2 != 'C') {
      throw new Error('non-atgcu base')
    } else if (S_1 === 'U') {
      S_1 = 'T';
    } else if (S_2 === 'U') {
      S_2 = 'T';
    }
    x.push(i);
    y.push(key[S_1 + S_2]);
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
// gates
/**
 * Generates gates 2D Visualization of DNA from any sequence
 *
 * @param sequence - sequence of DNA or RNA
 *
 * @returns coordinates for 2d visualization of DNA based on the Gates algorithm
 *
 * @remarks Gates MA. A simple way to look at DNA. *J Theor Biol*. 1986;119(3):319-328. doi:10.1016/s0022-5193(86)80144-8
 *
 * Example Usage
 * ```ts
 * gates('ATGC')
 * // returns [[0, 0, 0, 1, 0], [0, -1, 0, 0, 0]]
 * ```
 *
 *
 * In Gates’s method, DNA sequences are converted into 2D walks in which Ts, As, Cs, and Gs are up, down, left, and right, respectively. This gives each sequence a “shape.” However, there is degeneracy, meaning that a visualization is not necessarily unique. For example, TGAC is a square (up, right, down, and left), but so is GTCA (right, up, left, down).
 *
 * For more information visit: https://squiggle.readthedocs.io/en/latest/methods.html#gates
 */
export function gates(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;
  for (const character of sequence) {
    if (character === 'A') {
      yCoord--;
    } else if (character === 'C') {
      xCoord--;
    } else if (character === 'T' || character === 'U') {
      yCoord++;
    } else if (character === 'G') {
      xCoord++;
    } else {
      throw new Error('non-atgcu base')
    }
    x.push(xCoord);
    y.push(yCoord);
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
