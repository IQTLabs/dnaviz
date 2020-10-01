export function x_squiggle(length: i32): Float64Array {
  
  let x_vals = new Float64Array(2 * length + 1);
  let xCoord: f64 = 0;
  
  for (let i = 1; i <= 2 * length; i++) {
    unchecked(x_vals[i] = xCoord + 0.5)
    xCoord += 0.5;
  }

  return x_vals;
}

export function y_squiggle_v2(sequence: string, length: i32): Float64Array {
  let result = new Float64Array(2 * length + 1);
  let yCoord: f64 = 0.0;

  for (let i = 0; i < length; i++) {
    switch (sequence.charCodeAt(i)) {
      case 0x41: // "A"
        unchecked(result[2 * (length + i) + 2] = yCoord + 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord);
        break;
      case 0x43: // "C"
        unchecked(result[2 * (length + i) + 2] = yCoord - 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord);
        break;
      case 0x55:
      case 0x54: // "T"
        unchecked(result[2 * (length + i) + 2] = yCoord - 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord - 1);
        yCoord -= 1;
        break;
      case 0x47: // "G"
        unchecked(result[2 * (length + i) + 2] = yCoord + 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord + 1);
        yCoord += 1.0;
        break;
      default:
        unchecked(result[2 * (length + i) + 2] = yCoord);
        unchecked(result[2 * (length + i) + 3] = yCoord);
        break;
    }
  } 

  return result;
}

export function gates(sequence: string, length: i32): Float64Array {
  sequence = sequence.toUpperCase();

  let result = new Float64Array(2 * length + 2);

  let xCoord: f64 = 0.0;
  let yCoord: f64 = 0.0;

  for (let i = 0; i < length; i++) {
    switch (sequence.charCodeAt(i)) {
      case 0x41: // "A"
        yCoord--;
        break;
      case 0x43: // "C"
        xCoord--;
        break;
      case 0x54:
      case 0x55: // "T" && "U"
        yCoord++;
        break; 
      case 0x47: // "G"
        xCoord++;
        break;
      default:
        break;
    }

    unchecked(result[i + 1] = xCoord);
    unchecked(result[length + i + 2] = yCoord);
  }

  return result;
}



export function y_squiggle(sequence: string, length: i32): Float64Array {
  sequence = sequence.toUpperCase();

  let y_vals = new Float64Array(2 * length + 1);
  let yCoord:f64 = 0.0; 

  for (let i = 0; i < 2 * length; i += 2) {
    switch (sequence.charCodeAt(i >>> 1)) {
      case 0x41: // "A"
        unchecked(y_vals[i + 1] = yCoord + 0.5);
        unchecked(y_vals[i + 2] = yCoord);
        break;
      case 0x43: // "C"
        unchecked(y_vals[i + 1] = yCoord - 0.5);
        unchecked(y_vals[i + 2] = yCoord);
        break;
      case 0x54:
      case 0x55: // "T" && "U"
        unchecked(y_vals[i + 1] = yCoord - 0.5);
        unchecked(y_vals[i + 2] = yCoord - 1);
        yCoord -= 1;
        break; 
      case 0x47: // "G"
        unchecked(y_vals[i + 1] = yCoord + 0.5);
        unchecked(y_vals[i + 2] = yCoord + 1);
        yCoord += 1.0;
        break;
      default:
        unchecked(y_vals[i + 1] = yCoord);
        unchecked(y_vals[i + 2] = yCoord);
        break;
    }
  }

  return y_vals;
}

export function squiggle_v3(sequence: string, length: i32): Float64Array{
  let result = new Float64Array(4 * length + 2)

  let yCoord = 0.0;
  let xCoord = 0.0;
  
  for (let i = 1; i <= 2 * length; i += 2) {
    
    unchecked(result[i] = xCoord + 0.5);
    unchecked(result[i + 1] = xCoord + 1.0);
    xCoord++;

    switch (sequence.charCodeAt((i - 1) >>> 1)) {
      case 0x41: // "A"
        unchecked(result[(length << 1) + i + 1] = yCoord + 0.5);
        unchecked(result[(length << 1) + i + 2] = yCoord);
        break;
      case 0x43: // "C"
        unchecked(result[(length << 1) + i + 1] = yCoord - 0.5);
        unchecked(result[(length << 1) + i + 2] = yCoord);
        break;
      case 0x54: // "T"
        unchecked(result[(length << 1) + i + 1] = yCoord - 0.5);
        unchecked(result[(length << 1) + i + 2] = yCoord - 1);
        yCoord -= 1;
        break;
      case 0x47: // "G"
        unchecked(result[(length << 1) + i + 1] = yCoord + 0.5);
        unchecked(result[(length << 1) + i + 2] = yCoord + 1);
        yCoord += 1.0;
        break;
      default:
        unchecked(result[(length << 1) + i + 1] = yCoord);
        unchecked(result[(length << 1) + i + 2] = yCoord);
        break;
    }
  }
  return result;
}


export function squiggle_v2(sequence: string, length: i32): Float64Array{
  let result = new Float64Array(4 * length + 2)
  
  let yCoord = 0.0;
  let xCoord = 0.0;
  
  for (let i = 0; i < length; i++) {
    
    unchecked(result[2 * i + 1] = xCoord + 0.5);
    unchecked(result[2 * i + 2] = xCoord + 1.0);
    xCoord++;
    switch (sequence.charCodeAt(i)) {
      case 0x41: // "A"
        unchecked(result[2 * (length + i) + 2] = yCoord + 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord);
        break;
      case 0x43: // "C"
        unchecked(result[2 * (length + i) + 2] = yCoord - 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord);
        break;
      case 0x54: // "T"
        unchecked(result[2 * (length + i) + 2] = yCoord - 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord - 1);
        yCoord -= 1;
        break;
      case 0x47: // "G"
        unchecked(result[2 * (length + i) + 2] = yCoord + 0.5);
        unchecked(result[2 * (length + i) + 3] = yCoord + 1);
        yCoord += 1.0;
        break;
      default:
        unchecked(result[2 * (length + i) + 2] = yCoord);
        unchecked(result[2 * (length + i) + 3] = yCoord);
        break;
    }
  }
  return result;
}

export function squiggle_v1(sequence: string, length: i32): Float64Array {
  let result = new Float64Array(4 * (length + 1));
  // already zeros:
  // unchecked(result[0] = 0) // x[0] = 0
  // unchecked(result[1] = 0) // y[0] = 0
  let yCoord = 0.0;
  let xCoord = 0.0;

  for (let i = 0; i < 4 * length; i += 4) {
    let code = sequence.charCodeAt(i >>> 2);
    unchecked((result[i + 2] = xCoord + 0.5));
    unchecked((result[i + 3] = xCoord + 1.0));
    xCoord += 1;

    switch (code) {
      case 0x41: // "A"
        unchecked((result[i + 2] = yCoord + 0.5));
        unchecked((result[i + 4] = yCoord));
        break;
      case 0x43: // "C"
        unchecked((result[i + 2] = yCoord - 0.5));
        unchecked((result[i + 4] = yCoord));
        break;
      case 0x54: // "T"
        unchecked((result[i + 2] = yCoord - 0.5));
        unchecked((result[i + 4] = yCoord - 1));
        yCoord -= 1;
        break;
      case 0x47: // "G"
        unchecked((result[i + 2] = yCoord + 0.5));
        unchecked((result[i + 4] = yCoord + 1));
        yCoord += 1.0;
        break;
      default:
        unchecked((result[i + 2] = yCoord));
        unchecked((result[i + 4] = yCoord));
        break;
    }
  }
  return result;
}

