// different methods of transforming a sequence of dna into a series of coordinates for 2d visualization

// squiggle

 /**
 * Generates squiggle 2D Visualization of DNA from any sequence
 * 
 * @param sequence - sequence of DNA or RNA
 * 
 * @returns coordinates for 2d visualization of DNA based on the squiggle algorithm
 * 
 */
export function squiggle(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let yCoord: number = 0.0;

  for (let i = 0; i < sequence.length; i++) {
    const character = sequence[i] 
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
 * @param sequence - sequence of DNA or RNA
 * 
 * @returns coordinates for 2d visualization of DNA based on the yau algorithm
 * 
 */
export function yau(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (let i = 0; i < sequence.length; i++) {
    const character = sequence[i] 
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
 * Generates yau-2d 2D Visualization of DNA from any sequence
 * 
 * @param sequence - sequence of DNA or RNA
 * 
 * @returns coordinates for 2d visualization of DNA based on the yau-bp algorithm
 * 
 */
export function yau_bp(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (let i = 0; i < sequence.length; i++) {
    const character = sequence[i] 
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
 * @param sequence - sequence of DNA or RNA
 * 
 * @returns coordinates for 2d visualization of DNA based on the randic algorithm
 * 
 */
export function randic(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord = 0;
  const key: any = {
    A: 3,
    T: 2,
    G: 1,
    C: 0,
    U: 2,
  };
  for (let i = 0; i < sequence.length; i++) {
    const character = sequence[i] 
    xCoord++;
    x.push(xCoord);
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
 * @param sequence - sequence of DNA or RNA
 * 
 * @returns coordinates for 2d visualization of DNA based on the qi algorithm
 * 
 */
export function qi(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
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
  for (let i = 0; i < sequence.length; i++) {
    let S_1 = sequence[i];
    let S_2 = sequence[i + 1];
    if (S_1 === 'U') {
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
 * @returns coordinates for 2d visualization of DNA based on the gates algorithm
 * 
 */
export function gates(sequence: string): number[][] {
  sequence = sequence.toUpperCase();
  const x: number[] = [0.0];
  const y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;
  for (let i = 0; i < sequence.length; i++) {
    const character = sequence[i] 
    if (character === 'A') {
      yCoord--;
    } else if (character === 'C') {
      xCoord--;
    } else if (character === 'T' || character === 'U') {
      yCoord++;
    } else if (character === 'G') {
      xCoord++;
    }
    x.push(xCoord);
    y.push(yCoord);
  }
  const result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
