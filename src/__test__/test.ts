import * as fc from 'fast-check';
import { squiggle } from '../main';
import { yau } from '../main';
import { yau_bp } from '../main';
import { gates } from '../main';
import { randic } from '../main';
import { qi } from '../main';

// simplify yau testing
const rad = (3 ** 0.5) / 2

//squiggle test
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

const isCorLen = (sequence: string): boolean => {
    if (sequence.length == 2 * squiggle(sequence).length + 1) {
        return true;
    }
    return false;
};

//yau
test('test yau of A', () => {
    expect(yau('A')).toEqual([[0, 0.5], [0, -(3 ** 0.5) / 2]]);
});

test('test yau of T', () => {
    expect(yau('T')).toEqual([[0, 0.5], [0, (3 ** 0.5) / 2]]);
});

test('test yau of U', () => {
    expect(yau('U')).toEqual([[0, 0.5], [0, (3 ** 0.5) / 2]]);
});

test('test yau of G', () => {
    expect(yau('G')).toEqual([[0, (3 ** 0.5) / 2], [0, -0.5]]);
});

test('test yau of C', () => {
    expect(yau('C')).toEqual([[0, (3 ** 0.5) / 2], [0, 0.5]]);
});

const test_y_total = (s: string): boolean => {
    if (yau(s)[1][s.length - 1] === ((s.split('A').length - 1) * (-rad)) + ((s.split('T').length - 1) * (rad)) + ((s.split('C').length - 1) * (0.5)) + ((s.split('G').length - 1) * (-0.5))) {
        return true;
    }
    return false
}

const test_x_total = (s: string): boolean => {
    if (yau(s)[0][s.length - 1] === ((s.split('A').length - 1) * (0.5)) + ((s.split('T').length - 1) * (0.5)) + ((s.split('C').length - 1) * (-rad)) + ((s.split('G').length - 1) * (rad))) {
        return true
    }
    return false;
}

test('test y value correctness', () => {
    expect(fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "a", "T", "t", "U", "u", "C", "c", "G", "g"),1,1000),
            (s) => test_y_total(s)
        )
    )).toBe(true)
})