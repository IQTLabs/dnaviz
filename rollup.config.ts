import commonjs from 'rollup-plugin-commonjs';
import terser from 'rollup-plugin-babel-minify';
import pkg from './package.json';

export default [
  {
    input: 'dist/dnaviz.js',
    output: [
      {
        name: 'dnaviz',
        exports: 'named',
        file: 'dist/dnaviz.min.js',
        format: 'iife',
      },
    ],
    plugins: [commonjs(), terser()],
  },
  {
    input: 'dist/dnaviz.js',
    output: [
      {
        name: 'dnaviz',
        file: pkg.module,
        format: 'es',
      },
    ],
    plugins: [commonjs()],
  },
];
