import * as fc from 'fast-check';
import { squiggle } from '../dnaviz';
import { yau } from '../dnaviz';
import { yau_bp } from '../dnaviz';
import { gates } from '../dnaviz';
import { randic } from '../dnaviz';
import { qi } from '../dnaviz';

// simplify yau testing


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

test('test squiggle length', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "C", "G"), 1, 10000), (s) => {
                expect(squiggle(s)[0].length == 2 * s.length + 1).toBe(true)
            }
        )
    ))
})

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

// const test_y_total_yau = (s: string): boolean => {
//     if (yau(s)[1][(yau(s)[1]).length - 1] === ((s.split('A').length - 1) * (-(3 ** 0.5) / 2)) + ((s.split('U').length - 1) * ((3 ** 0.5) / 2)) + ((s.split('T').length - 1) * ((3 ** 0.5) / 2)) + ((s.split('C').length - 1) * (0.5)) + ((s.split('G').length - 1) * (-0.5))) {
//         return true;
//     }
//     return false
// }

// const test_x_total_yau = (s: string): boolean => {
//     if (yau(s)[0][(yau(s)[1]).length - 1] === ((s.split('A').length - 1) * (0.5)) + ((s.split('T').length - 1) * (0.5)) + ((s.split('U').length - 1) * (0.5)) + ((s.split('C').length - 1) * (-(3 ** 0.5) / 2)) + ((s.split('G').length - 1) * ((3 ** 0.5) / 2))) {
//         return true
//     }
//     return false;
// }

test('test y value correctness for yau', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "U", "C", "G"), 1, 10000), (s) => {
                expect(yau(s)[1][(yau(s)[1]).length - 1] == (-(3 ** 0.5) / 2 * s.replace(/[^A]/g, "").length)
                    + ((3 ** 0.5) / 2 * s.replace(/[^T]/g, "").length)
                    + (0.5 * s.replace(/[^C]/g, "").length)
                    + (-0.5 * s.replace(/[^G]/g, "").length)).toBe(true)
            }
        )
    ))
})

test('test x value correctness for yau', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "U", "C", "G"), 1, 10000), (s) => {
                expect(yau(s)[0][(yau(s)[1]).length - 1] == ((3 ** 0.5) / 2 * (s.replace(/[^G]/g, "").length + s.replace(/[^C]/g, "").length) + (0.5 * (s.replace(/[^A]/g, "").length + s.replace(/[^T]/g, "").length + s.replace(/[^U]/g, "").length)))).toBe(true)
            }
        )
    ))
})

test('test x value correctness for yau-bp', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "C", "G"), 1, 10000), (s) => {
                expect(((s.split('A').length - 1) + (s.split('C').length - 1) + (s.split('T').length - 1) + (s.split('G').length - 1)) == yau_bp(s)[0][(yau(s)[0]).length - 1]).toBe(true)
            }
        )
    ))
})

test('test y value correctness for yau-bp', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "C", "G"), 1, 10000), (s) => {
                expect((-(s.split('A').length - 1) + (s.split('T').length - 1) + 0.5 * ((s.split('C').length - 1) - (s.split('G').length - 1))) == yau_bp(s)[1][(yau(s)[1]).length - 1]).toBe(true)
            }
        )
    ))
})

test('test yau-bp length', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "C", "G"), 1, 10000), (s) => {
                expect(yau_bp(s)[0].length == s.length + 1).toBe(true)
            }
        )
    ))
})

test('test yau_bp of basic', () => {
    expect(yau_bp('ATGC')).toEqual([[0, 1, 2, 3, 4],
    [0, -1, 0, -0.5, 0]]);
});

const randic_key: any = {
    A: 3,
    T: 2,
    G: 1,
    C: 0
};

test('test randic', () => {
    (fc.assert(
        fc.property(
            fc.stringOf(fc.constantFrom("A", "T", "C", "G"), 1, 100), (s) => {
                for(let idx = 0; idx < s.length; idx++) {
                    let my_char = s.charAt(idx)
                    expect(randic(s)[1][idx] == randic_key.my_char)
                }
            }
        )
    ))
})