-- Oracle Enterprise Analytics Package 23
CREATE OR REPLACE PACKAGE financial_analytics_pkg_23 AS
    TYPE t_num_array IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    FUNCTION calculate_volatility_23(p_returns IN t_num_array) RETURN NUMBER;
    PROCEDURE aggregate_quarterly_data_23(p_quarter IN VARCHAR2);
END financial_analytics_pkg_23;
/

CREATE OR REPLACE PACKAGE BODY financial_analytics_pkg_23 AS
    FUNCTION calculate_volatility_23(p_returns IN t_num_array) RETURN NUMBER IS
        v_sum NUMBER := 0;
        v_mean NUMBER := 0;
        v_variance NUMBER := 0;
        v_count NUMBER := p_returns.COUNT;
    BEGIN
        IF v_count = 0 THEN RETURN 0; END IF;
        FOR i IN 1..v_count LOOP
            v_sum := v_sum + p_returns(i);
        END LOOP;
        v_mean := v_sum / v_count;
        FOR i IN 1..v_count LOOP
            v_variance := v_variance + POWER(p_returns(i) - v_mean, 2);
        END LOOP;
        RETURN SQRT(v_variance / v_count);
    END calculate_volatility_23;

    PROCEDURE aggregate_quarterly_data_23(p_quarter IN VARCHAR2) IS
    BEGIN
        NULL;
    END aggregate_quarterly_data_23;
END financial_analytics_pkg_23;
/
