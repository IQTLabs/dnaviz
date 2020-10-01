"use strict";
exports.__esModule = true;
exports.squiggle_v1 = exports.squiggle_v2 = exports.squiggle_v3 = exports.y_squiggle = exports.y_squiggle_v2 = exports.x_squiggle = void 0;
function x_squiggle(length) {
    var x_vals = new Float64Array(2 * length + 1);
    var xCoord = 0;
    for (var i = 1; i <= 2 * length; i++) {
        unchecked(x_vals[i] = xCoord + 0.5);
        xCoord += 0.5;
    }
    return x_vals;
}
exports.x_squiggle = x_squiggle;
function y_squiggle_v2(sequence, length) {
    var result = new Float64Array(2 * length + 1);
    var yCoord = 0.0;
    for (var i = 0; i < length; i++) {
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
exports.y_squiggle_v2 = y_squiggle_v2;
function y_squiggle(sequence, length) {
    sequence = sequence.toUpperCase();
    var y_vals = new Float64Array(2 * length + 1);
    var yCoord = 0.0;
    for (var i = 0; i < 2 * length; i += 2) {
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
exports.y_squiggle = y_squiggle;
function squiggle_v3(sequence, length) {
    var result = new Float64Array(4 * length + 2);
    var yCoord = 0.0;
    var xCoord = 0.0;
    for (var i = 1; i <= 2 * length; i += 2) {
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
exports.squiggle_v3 = squiggle_v3;
function squiggle_v2(sequence, length) {
    var result = new Float64Array(4 * length + 2);
    var yCoord = 0.0;
    var xCoord = 0.0;
    for (var i = 0; i < length; i++) {
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
exports.squiggle_v2 = squiggle_v2;
function squiggle_v1(sequence, length) {
    var result = new Float64Array(4 * (length + 1));
    // already zeros:
    // unchecked(result[0] = 0) // x[0] = 0
    // unchecked(result[1] = 0) // y[0] = 0
    var yCoord = 0.0;
    var xCoord = 0.0;
    for (var i = 0; i < 4 * length; i += 4) {
        var code = sequence.charCodeAt(i >>> 2);
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
exports.squiggle_v1 = squiggle_v1;
