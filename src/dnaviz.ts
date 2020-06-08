export function squiggle(sequence: string): number[][] {
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let yCoord: number = 0.0;

  for (let character of sequence) {
    x.push(x[x.length - 1] + 0.5);
    x.push(x[x.length - 1] + 0.5);
    if (character === 'A' || character === 'a' ) {
      y.push(yCoord + 0.5);
      y.push(yCoord);
    } else if (character === 'C' || character === 'c' ) {
      y.push(yCoord - 0.5);
      y.push(yCoord);
    } else if (character === 'T' || character === 't' || character === 'U' || character === 'u'  ) {
      y.push(yCoord - 0.5);
      y.push(yCoord - 1);
      yCoord -= 1.0;
    } else if (character === 'G' || character === 'g' ) {
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
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (let _i = 0; _i < sequence.length; _i++) {
    let character: string = sequence[_i];
    if (character === 'A' || character === 'a' ) {
      xCoord = xCoord + 0.5;
      yCoord = yCoord - 3 ** 0.5 / 2;
    } else if (character === 'C' || character === 'c' ) {
      xCoord = xCoord + 3 ** 0.5 / 2;
      yCoord = yCoord + 0.5;
    } else if (character === 'T' || character === 't' || character === 'U' || character === 'u'  ) {
      xCoord = xCoord + 0.5;
      yCoord = yCoord + 3 ** 0.5 / 2;
    } else if (character === 'G' || character === 'g' ) {
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
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;

  for (let _i = 0; _i < sequence.length; _i++) {
    let character: string = sequence[_i];
    xCoord++;
    x.push(xCoord);
    if (character === 'A' || character === 'a' ) {
      yCoord = yCoord - 1;
    } else if (character === 'C' || character === 'c' ) {
      yCoord = yCoord + 0.5;
    } else if (character === 'T' || character === 't' || character === 'U' || character === 'u'  ) {
      yCoord = yCoord + 1;
    } else if (character === 'G' || character === 'g' ) {
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
    x.push(i);
    y.push(key[sequence[i] + sequence[i + 1]]);
  }
  let result: number[][] = [];
  result.push(x);
  result.push(y);
  return result;
}
//gates
export function gates(sequence: string): number[][] {
  let x: number[] = [0.0];
  let y: number[] = [0.0];
  let xCoord: number = 0.0;
  let yCoord: number = 0.0;
  for (let _i = 0; _i < sequence.length; _i++) {
    let character: string = sequence[_i];
    if (character === 'A' || character === 'a' ) {
      yCoord--;
    } else if (character === 'C' || character === 'c' ) {
      xCoord--;
    } else if (character === 'T' || character === 't' || character === 'U' || character === 'u'  ) {
      yCoord++;
    } else if (character === 'G' || character === 'g' ) {
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
