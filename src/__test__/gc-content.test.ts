import { gc_content } from '../dnaviz';

test('test gc_content of even gap', () => {
  expect(gc_content('ATGC', 2)).toEqual([
    [0, 2, 4],
    [0, 0, 1],
  ]);
});

test('test gc_content of uneven gap', () => {
  expect(gc_content('GAGG', 3)).toEqual([
    [0, 3],
    [0, (2/3)],
  ]);
});
