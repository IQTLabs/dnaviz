export function squiggle(sequence: string): number[][] {
  sequence = sequence.toUpperCase()
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let yCoord: number = 0.0;

  for (let character of sequence) {
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
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}

//yau
export function yau(sequence: string): number[][] {
  sequence = sequence.toUpperCase()
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (let _i = 0; _i < sequence.length; _i++) {
    let character: string = sequence[_i];
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
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
//yau-bp
export function yau_bp(sequence: string): number[][] {
  sequence = sequence.toUpperCase()
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (let _i = 0; _i < sequence.length; _i++) {
    let character: string = sequence[_i];
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
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
//randic
export function randic(sequence: string): number[][] {
  sequence = sequence.toUpperCase()
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  const key: any = {
    A: 3,
    T: 2,
    G: 1,
    C: 0,
    U: 2,
    a: 3,
    t: 2,
    g: 1,
    c: 0,
    u: 2,
  };
  for (let i = 0; i < sequence.length; i++) {
    x.push(i);
    y.push(key[sequence[i]]);
  }
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
//qi
export function qi(sequence: string): number[][] {
  sequence = sequence.toUpperCase()
  let x: number[] = [0.0];
  let y: number[] = [0.0];
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
    let s_1 = sequence[i]
    let s_2 = sequence[i + 1]
    if (s_1 == 'U') {
      s_1 = 'T'
    } else if (s_2 == 'U') {
      s_2 = 'T'
    }
    x.push(i);
    y.push(key[s_1 + s_2]);
  }
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
//gates
export function gates(sequence: string): number[][] {
  sequence = sequence.toUpperCase()
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;
  for (let _i = 0; _i < sequence.length; _i++) {
    let character: string = sequence[_i];
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
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
