# Performance optimizations and vectorization for Automated Temporal Partition Rotator and Data Pruner
# Module: partition_range_rotator
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
