<<<<<<< HEAD
# DNAViz
### DNA Sequence visualization for humans
![CI/CD](https://github.com/Lab41/dnaviz/workflows/CI/CD/badge.svg)
=======
# DNAviz

> DNA Sequence visualization for humans

[![CI/CD](https://github.com/IQTLabs/dnaviz/workflows/CI/CD/badge.svg)](https://github.com/IQTLabs/dnaviz/actions)
>>>>>>> 5b995dff8020bc04aa51846a1c7d2ce000fcbe37

A DNA visualization package for Node, the browser, and beyond.
Using one of six different methods, DNAviz allows you to convert any DNA or RNA sequence into meaningful two-dimensional visualizations.

<<<<<<< HEAD
# Getting Started
## Download
Via npm
=======
## Installation

via NPM:

>>>>>>> 5b995dff8020bc04aa51846a1c7d2ce000fcbe37
```
$ npm install --save-dev dnaviz
```
<<<<<<< HEAD
or Via Yarn
=======

or via Yarn:

>>>>>>> 5b995dff8020bc04aa51846a1c7d2ce000fcbe37
```
$ yarn add --dev dnaviz
```
## Usage
### ES6 modules
<<<<<<< HEAD
```Typescript
import * as dna from 'dnaviz';
=======

```js
import * as dnaviz from 'dnaviz';
dnaviz.squiggle('ATGC'); // => [[0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4], [0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]]
>>>>>>> 5b995dff8020bc04aa51846a1c7d2ce000fcbe37
```
### CommonJS
<<<<<<< HEAD
```Typescript
const dna = require('dnaviz')
```
## Hello World
```Typescript
import * as dna from 'dnaviz';

dna.squiggle('ATGC')
// returns [[0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4], [0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]]
```
=======

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

>>>>>>> 5b995dff8020bc04aa51846a1c7d2ce000fcbe37
## Available Visualization Methods

| Methods | Description |
| ------ | ----------- |
|Squiggle | Bases converted into binary vector coordinates|
|Yau | Bases converted into unit vectors based on the unit circle |
|Yau-BP | Slight modification to Yau's method that ensures that the x axis is equivalent to the base position |
|Randic | Assigns each base a unique y-value |
|Qi | Assigns each 2-mer combination a unique y-value |
|Gates | Bases converted into 2D-walks (up, down, left, and right) |
# Documentation
<<<<<<< HEAD
For specific functions and methods of visualization, take a look at the [documentation](https://lab41.github.io/dnaviz/modules/_dnaviz_.html)
=======

For specific functions and visualization methods, take a look at the [documentation](https://iqtlabs.github.io/dnaviz/modules/_dnaviz_.html).
>>>>>>> 5b995dff8020bc04aa51846a1c7d2ce000fcbe37
