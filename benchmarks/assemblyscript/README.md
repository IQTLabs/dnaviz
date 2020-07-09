# Benchmarking-WebAssembly-and-DNAViz
Compares performance of Squiggle and DNAViz packages

# Usage
Running the benchmark tests is as simple as running...
```ts
$ node benchmark
```

# Current Results
## AssemblyScript
| Method | Number of Bases | Operations per Second |
| ------ | ------------- |:-------------:|
| Squiggle | 10,000 | 140 ±8.36% |
| Squiggle | 100,000 | 17.16 ±3.49% |
| Squiggle | 1,000,000 | 1.60 ±8.60% |
| Yau | 10,000 | 320 ±6.86% |
| Yau | 100,000 | 35.97 ±4.78% |
| Yau | 1,000,000 | 3.38 ±10.31% |
| Yau-BP | 10,000 | 331 ±5.67% |
| Yau-BP | 100,000 | 37.47 ±2.73% |
| Yau-BP | 1,000,000 | 3.69 ±4.13% |

## DNAViz
| Method | Number of Bases | Operations per Second |
| ------ | ------------- |:-------------:|
| Squiggle | 10,000 | 1,312 ±5.05% |
| Squiggle | 100,000 | 83.74 ±2.65% |
| Squiggle | 1,000,000 | 8.28 ±10.78% |
| Yau | 10,000 | 3,620 ±2.92% |
| Yau | 100,000 | 165 ±4.42% |
| Yau | 1,000,000 | 16.31 ±3.11% |
| Yau-BP | 10,000 | 3,690 ±3.67% |
| Yau-BP | 100,000 | 170 ±2.53% |
| Yau-BP | 1,000,000 | 12.88 ±5.66% |