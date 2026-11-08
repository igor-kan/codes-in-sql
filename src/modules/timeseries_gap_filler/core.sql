# Core computational routine for Continuous Timeseries Gap-Filling Aggregation
# Module: timeseries_gap_filler

def compute_timeseries_gap_filler(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
