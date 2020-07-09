export function squiggle(sequence: string, length: i32): Float64Array {
  let x = [0.0]
  let y = [0.0]
  let yCoord = 0.0
  let xCoord = 0.0

  for (let i = 0; i < length; i++) {
    let character = sequence.charAt(i)
    x.push(xCoord + 0.5)
    x.push(xCoord + 1.0)
    xCoord += 1.0
    if (character == "A") {
      y.push(yCoord + 0.5)
      y.push(yCoord)
    } else if (character == "C") {
      y.push(yCoord - 0.5)
      y.push(yCoord)
    } else if (character == "T") {
      y.push(yCoord - 0.5)
      y.push(yCoord - 1)
      yCoord -= 1.0
    } else if (character == "G") {
      y.push(yCoord + 0.5)
      y.push(yCoord + 1)
      yCoord += 1.0
    } else {
      y.push(yCoord)
      y.push(yCoord)
    }
  }

  let result = new Float64Array(2 * x.length + 2)
  for (let i = 0; i < x.length; i++) {
    result[2 * i + 0 + 1] = x[i]
    result[2 * i + 1 + 1] = y[i]
  }
  return result
}

export function yau(sequence: string, length: i32): Float64Array {
  const x = [0.0]
  const y = [0.0]
  let xCoord = 0.0
  let yCoord = 0.0

  for (let i = 0; i < length; i++) {
    let character = sequence.charAt(i)
    if (character === "A") {
      xCoord = xCoord + 0.5
      yCoord = yCoord - 3 ** 0.5 / 2
    } else if (character === "C") {
      xCoord = xCoord + 3 ** 0.5 / 2
      yCoord = yCoord + 0.5
    } else if (character === "T" || character === "U") {
      xCoord = xCoord + 0.5
      yCoord = yCoord + 3 ** 0.5 / 2
    } else if (character === "G") {
      xCoord = xCoord + 3 ** 0.5 / 2
      yCoord = yCoord - 0.5
    }
    x.push(xCoord)
    y.push(yCoord)
  }

  let result = new Float64Array(2 * x.length + 2)
  for (let i = 0; i < x.length; i++) {
    result[2 * i + 0 + 1] = x[i]
    result[2 * i + 1 + 1] = y[i]
  }
  return result
}

export function yau_bp(sequence: string, length: i32): Float64Array {
  const x = [0.0]
  const y = [0.0]
  let xCoord = 0.0
  let yCoord = 0.0

  for (let i = 0; i < length; i++) {
    let character = sequence.charAt(i)
    xCoord++
    x.push(xCoord)
    if (character === "A") {
      yCoord = yCoord - 1
    } else if (character === "C") {
      yCoord = yCoord + 0.5
    } else if (character === "T" || character === "U") {
      yCoord = yCoord + 1
    } else if (character === "G") {
      yCoord = yCoord - 0.5
    }
    y.push(yCoord)
  }

  let result = new Float64Array(2 * x.length + 2)
  for (let i = 0; i < x.length; i++) {
    result[2 * i + 0 + 1] = x[i]
    result[2 * i + 1 + 1] = y[i]
  }
  return result
}

//   function randic(sequence: string, length: i32): Float64Array {
//   const x = [];
//   const y = [];
//   let xCoord = 0;
//   const key = {
//     A: 3,
//     T: 2,
//     U: 2,
//     G: 1,
//     C: 0,
//   };
//   for (let i = 0; i < length; i++) {
//     let character = sequence.charAt(i);
//     if (
//       character != "A" &&
//       character != "T" &&
//       character != "U" &&
//       character != "G" &&
//       character != "C"
//     ) {
//       throw new Error("non-atgcu base");
//     }
//     x.push(xCoord);
//     xCoord++;
//     y.push(key[character]);
//   }
//   let result = new Float64Array(2 * x.length + 2);
//   for (let i = 0; i < x.length; i++) {
//     result[2 * i + 0 + 1] = x[i];
//     result[2 * i + 1 + 1] = y[i];
//   }
//   return result;
// }

// export function qi(sequence: string, length: i32): Float64Array {
//   const x = [];
//   const y = [];
//   const key = {
//     AA: 12,
//     AC: 4,
//     GT: 6,
//     AG: 0,
//     CC: 13,
//     CA: 5,
//     CG: 10,
//     TT: 15,
//     GG: 14,
//     GC: 11,
//     AT: 8,
//     GA: 1,
//     TG: 7,
//     TA: 9,
//     TC: 3,
//     CT: 2,
//   };
//   for (let i = 0; i < length - 1; i++) {
//     let S_1 = sequence.charAt(i);
//     let S_2 = sequence.charAt(i + 1);
//     if (S_1 != "A" && S_1 != "T" && S_1 != "U" && S_1 != "G" && S_1 != "C") {
//       throw new Error("non-atgcu base");
//     } else if (
//       S_2 != "A" &&
//       S_2 != "T" &&
//       S_2 != "U" &&
//       S_2 != "G" &&
//       S_2 != "C"
//     ) {
//       throw new Error("non-atgcu base");
//     } else if (S_1 === "U") {
//       S_1 = "T";
//     } else if (S_2 === "U") {
//       S_2 = "T";
//     }
//     x.push(i);
//     y.push(key[S_1 + S_2]);
//   }
//   let result = new Float64Array(2 * x.length + 2);
//   for (let i = 0; i < x.length; i++) {
//     result[2 * i + 0 + 1] = x[i];
//     result[2 * i + 1 + 1] = y[i];
//   }
//   return result;
// }

export function gates(sequence: string, length: i32): Float64Array {
  sequence = sequence.toUpperCase()
  const x = [0.0]
  const y = [0.0]
  let xCoord = 0.0
  let yCoord = 0.0
  for (let i = 0; i < length; i++) {
    let character = sequence.charAt(i)
    if (character === "A") {
      yCoord--
    } else if (character === "C") {
      xCoord--
    } else if (character === "T" || character === "U") {
      yCoord++
    } else if (character === "G") {
      xCoord++
    } else {
      throw new Error("non-atgcu base")
    }
    x.push(xCoord)
    y.push(yCoord)
  }
  let result = new Float64Array(2 * x.length + 2)
  for (let i = 0; i < x.length; i++) {
    result[2 * i + 0 + 1] = x[i]
    result[2 * i + 1 + 1] = y[i]
  }
  return result
}
