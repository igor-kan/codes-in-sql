# Boundary validation and exceptional input guarding for Continuous Timeseries Gap-Filling Aggregation
# Module: timeseries_gap_filler

def sanitize_timeseries_gap_filler_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
