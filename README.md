# `dnaviz`

> DNA visualization functions for Node, the browser, and beyond

[![CI/CD](https://github.com/IQTLabs/dnaviz/workflows/CI/CD/badge.svg)](https://github.com/IQTLabs/dnaviz/actions)

A DNA visualization package for Node, the browser, and beyond.
Using one of seven different methods, `dnaviz` allows you to convert any DNA or RNA sequence into meaningful two-dimensional visualizations.

## Installation

via NPM:

```
$ npm install dnaviz
```

or via Yarn:

```
$ yarn add dnaviz
```

## Usage

### ES6 modules

```js
import * as dnaviz from 'dnaviz';
dnaviz.squiggle('ATGC'); // => [[0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4], [0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]]
```

### CommonJS

```js
const dnaviz = require('dnaviz');
dnaviz.squiggle('ATGC'); // => [[0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4], [0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]]
```

### Browser

```html
<script src="dnaviz.min.js"></script>
<script>
  console.log(dnaviz.gates('ATGC'));
</script>
```

## Available Visualization Methods

| Methods  | Description                                                                                         |
| -------- | --------------------------------------------------------------------------------------------------- |
| Squiggle | Bases converted into binary vector coordinates                                                      |
| Yau      | Bases converted into unit vectors based on the unit circle                                          |
| Yau-BP   | Slight modification to Yau's method that ensures that the x axis is equivalent to the base position |
| Yau-Int  | Yau-BP but with integer values                                                                      |
| Randic   | Assigns each base a unique y-value                                                                  |
| Qi       | Assigns each 2-mer combination a unique y-value                                                     |
| Gates    | Bases converted into 2D walks (up, down, left, and right)                                           |

# Documentation

For specific functions and visualization methods, take a look at the [documentation](https://iqtlabs.github.io/dnaviz/modules/_dnaviz_.html).
