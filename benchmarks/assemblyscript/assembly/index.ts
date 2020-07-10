export function squiggle(sequence: string, length: i32): Float64Array {
  let result = new Float64Array(4 * (length + 1))
  // already zeros:
  // unchecked(result[0] = 0) // x[0] = 0
  // unchecked(result[1] = 0) // y[0] = 0
  let yCoord = 0.0
  let xCoord = 0.0

  for (let i = 0; i < 4 * length; i += 4) {
    let code = sequence.charCodeAt(i >>> 2)
    unchecked(result[i + 3] = xCoord + 0.5)
    unchecked(result[i + 5] = xCoord + 1.0)
    xCoord += 1

    switch (code) {
      case 0x41: // "A"
        unchecked(result[i + 4] = yCoord + 0.5)
        unchecked(result[i + 6] = yCoord)
        break
      case 0x43: // "C"
        unchecked(result[i + 4] = yCoord - 0.5)
        unchecked(result[i + 6] = yCoord)
        break
      case 0x54: // "T"
        unchecked(result[i + 4] = yCoord - 0.5)
        unchecked(result[i + 6] = yCoord - 1)
        yCoord -= 1
        break
      case 0x47: // "G"
        unchecked(result[i + 4] = yCoord + 0.5)
        unchecked(result[i + 6] = yCoord + 1)
        yCoord += 1.0
        break
      default:
        unchecked(result[i + 4] = yCoord)
        unchecked(result[i + 6] = yCoord)
        break
    }
  }
  return result
}

export function yau(sequence: string, length: i32): Float64Array {
  const HALF_SQRT_3 = 0.8660254037844386; // 3 ** 0.5 / 2;

  let result = new Float64Array(2 * (length + 2))
  // already zeros:
  // unchecked(result[0] = 0) // x[0] = 0
  // unchecked(result[1] = 0) // y[0] = 0
  let xCoord = 0.0
  let yCoord = 0.0

  for (let i = 0; i < length; i++) {
    let code = sequence.charCodeAt(i)
    switch (code) {
      case 0x41: // "A"
        xCoord += 0.5
        yCoord -= HALF_SQRT_3
        break
      case 0x43: // "C"
        xCoord += HALF_SQRT_3
        yCoord += 0.5
        break
      case 0x54: // "T"
      case 0x55: // "U"
        xCoord += 0.5
        yCoord += HALF_SQRT_3
        break
      case 0x47: // "G"
        xCoord += HALF_SQRT_3
        yCoord -= 0.5
        break
    }
    unchecked(result[i * 2 + 3] = xCoord) // x
    unchecked(result[i * 2 + 4] = yCoord) // y
  }
  return result
}

export function yau_bp(sequence: string, length: i32): Float64Array {
  let result = new Float64Array(2 * (length + 2))
  // already zeros:
  // unchecked(result[0] = 0) // x[0] = 0
  // unchecked(result[1] = 0) // y[0] = 0
  let xCoord = 0.0
  let yCoord = 0.0

  for (let i = 0; i < length; i++) {
    let code = sequence.charCodeAt(i)
    switch (code) {
      case 0x41: // "A"
        yCoord -= 1
        break
      case 0x43: // "C"
        yCoord += 0.5
        break
      case 0x54: // "T"
      case 0x55: // "U"
        yCoord += 1
        break
      case 0x47: // "G"
        yCoord -= 0.5
        break
    }
    xCoord += 1
    unchecked(result[i * 2 + 3] = xCoord) // x
    unchecked(result[i * 2 + 4] = yCoord) // y
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
  let result = new Float64Array(2 * (length + 2))
  // already zeros:
  // unchecked(result[0] = 0) // x[0] = 0
  // unchecked(result[1] = 0) // y[0] = 0
  let xCoord = 0.0
  let yCoord = 0.0

  for (let i = 0; i < length; i++) {
    let code = sequence.charCodeAt(i)
    switch (code) {
      case 0x41: // "A"
        yCoord -= 1
        break
      case 0x43: // "C"
        yCoord -= 1
        break
      case 0x54: // "T"
      case 0x55: // "U"
        yCoord += 1
        break
      case 0x47: // "G"
        yCoord += 1
        break
      default:
        throw new Error("non-atgcu base")
    }
    unchecked(result[i * 2 + 3] = xCoord) // x
    unchecked(result[i * 2 + 4] = yCoord) // y
  }
  return result
}
