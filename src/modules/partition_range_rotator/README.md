# Automated Temporal Partition Rotator and Data Pruner (`partition_range_rotator`)

## Overview

The `partition_range_rotator` module provides high-performance, mathematically rigorous operations for `codes-in-sql`.

### Component Artifacts

- **Type Definitions**: [`types.sql`](./types.sql)
- **Computational Core**: [`core.sql`](./core.sql)
- **Deterministic Unit Tests**: [`tests.sql`](./tests.sql)
- **SIMD Optimizations**: [`perf_simd.sql`](./perf_simd.sql)
- **Microbenchmarks**: [`benchmarks.sql`](./benchmarks.sql)
- **Boundary Validation**: [`boundary.sql`](./boundary.sql)
- **Property Fuzzing**: [`fuzz_invariants.sql`](./fuzz_invariants.sql)

### Computational Invariant

$$f(x) = x \left(1 + \frac{1}{2}x - \frac{1}{8}x^2\right)$$

Maintained under strict continuous integration, sanitizer checks, and memory bounds verification.
