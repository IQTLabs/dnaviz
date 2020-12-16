import { terser } from 'rollup-plugin-terser';

export default [
  {
    input: 'dist/esm/dnaviz.js',
    output: [
      {
        name: 'dnaviz',
        exports: 'named',
        file: 'dist/dnaviz.min.js',
        format: 'iife',
      },
    ],
    plugins: [terser()],
  },
];
