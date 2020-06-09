import * as fc from 'fast-check';
import { randic } from '../dnaviz';
import { qi } from '../dnaviz';

const randic_key: any = {
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

test('test randic', () => {
    fc.assert(
        fc.property(fc.stringOf(fc.constantFrom('A', 'a', 'T', 't', 'U', 'u', 'C', 'c', 'G', 'g'), 1, 100), (s) => {
            for (let idx = 0; idx < s.length; idx++) {
                let my_char = s.charAt(idx);
                expect(randic(s)[1][idx] == randic_key.my_char);
            }
        }),
    );
});

const qi_key: any = {
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

test('test qi', () => {
    fc.assert(
        fc.property(fc.stringOf(fc.constantFrom('A', 'T', 'C', 'G'), 2, 100), (s) => {
            for (let idx = 0; idx < s.length; idx++) {
                let my_char = s.charAt(idx) + s.charAt(idx + 1);
                expect(qi(s)[1][idx] == qi_key.my_char);
            }
        }),
    );
});