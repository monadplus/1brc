# The One Billion Row Challenge

For more details: <https://github.com/gunnarmorling/1brc>

## Benchmarks

Reference solution in Haskell: <https://github.com/vaibhavsagar/experiments/tree/d3302a76c641d532db2bf1cb3f8793484dfdbfc0/1brc>

```bash
$ hyperfine './result/bin/1brc "../../1brc/data/hundred-millions.txt" > /dev/null'
Benchmark 1: ./result/bin/1brc "../../1brc/data/hundred-millions.txt" > /dev/null
  Time (mean ± σ):      8.810 s ±  0.070 s    [User: 8.381 s, System: 0.428 s]
  Range (min … max):    8.737 s …  8.967 s    10 runs
```

## Naive

```bash
# TODO
```
