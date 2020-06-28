# DNAViz
### DNA Sequence visualization for humans
![CI/CD](https://github.com/Lab41/dnaviz/workflows/CI/CD/badge.svg)

A DNA visualization npm package for the command line, browser, and beyond. Using six different methods, convert any DNA or RNA sequence into meaningful and analyzable datasets.

# Getting Started
## Download
Via npm
```
$ npm install --save-dev dnaviz
```
or Via Yarn
```
$ yarn add --dev dnaviz
```
## Usage
### ES6 modules
```Typescript
import * as dna from 'dnaviz';
```
### CommonJS
```Typescript
const dna = require('dnaviz')
```
## Basic Example
```Typescript
import * as dna from 'dnaviz';

dna.squiggle('ATGC')
// returns [[0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4], [0, 0.5, 0, -0.5, -1, -0.5, 0, -0.5, 0]]
```
## Available Methods

| Methods | Description |
| ------ | ----------- |
|Squiggle | Test |
# Documentation
For specific functions and methods of visualization, take a look at the [documentation](https://lab41.github.io/dnaviz/modules/_dnaviz_.html)
