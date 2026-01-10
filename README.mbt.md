<!--
SPDX-FileCopyrightText: 2025 Kalle Fagerberg

SPDX-License-Identifier: CC0-1.0
-->

# Micromath for MoonBit

Port of the Rust [micromath](https://github.com/tarcieri/micromath)
library to [MoonBit](https://www.moonbitlang.com/),
giving fast `Float` math operations.

Optimizes for performance and small code size at the cost of precision.

## Benchmarks

```console
$ moon bench --target wasm
[applejag/micromath] bench tan.mbt:88 (#3) ok
name           time (mean ± σ)         range (min … max) 
@math.tanf        0.04 µs ±   0.00 µs     0.04 µs …   0.04 µs  in 10 × 100000 runs
@micromath.tan    0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
[applejag/micromath] bench sqrt.mbt:65 (#2) ok
name            time (mean ± σ)         range (min … max) 
Float::sqrt        0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
@micromath.sqrt    0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
[applejag/micromath] bench sin.mbt:78 (#1) ok
name           time (mean ± σ)         range (min … max) 
@math.sinf        0.04 µs ±   0.00 µs     0.04 µs …   0.04 µs  in 10 × 100000 runs
@micromath.sin    0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
[applejag/micromath] bench cos.mbt:83 (#1) ok
name           time (mean ± σ)         range (min … max) 
@math.cosf        0.04 µs ±   0.00 µs     0.04 µs …   0.04 µs  in 10 × 100000 runs
@micromath.cos    0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
[applejag/micromath] bench atan2.mbt:61 (#1) ok
name             time (mean ± σ)         range (min … max) 
@math.atan2         0.04 µs ±   0.00 µs     0.04 µs …   0.04 µs  in 10 × 100000 runs
@micromath.atan2    0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
[applejag/micromath] bench atan.mbt:70 (#3) ok
name            time (mean ± σ)         range (min … max) 
@math.atanf        0.07 µs ±   0.00 µs     0.07 µs …   0.07 µs  in 10 × 100000 runs
@micromath.atan    0.02 µs ±   0.00 µs     0.02 µs …   0.02 µs  in 10 × 100000 runs
Total tests: 6, passed: 6, failed: 0.
```

## License

Copyright &copy; 2026 Kalle Fagerberg

This repository complies with the REUSE recommendations.
Different licenses are used for different files. In general:

- MoonBit code is licensed under MIT ([LICENSES/MIT.txt](./LICENSES/MIT.txt)).
- Miscellaneous files, e.g `.gitignore`, are licensed under CC0 1.0 Universal ([LICENSES/CC0-1.0.txt](./LICENSES/CC0-1.0.txt)).

Please see each file's header or accompanied `.license` file for specifics.
