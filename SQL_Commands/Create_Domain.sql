-------------------------------------------------------------------------------
--                                CREATE DOMAIN
-------------------------------------------------------------------------------
-- A domain is essentially a data type with optional constraints
-- (restrictions on the allowed set of values).

CREATE DOMAIN CPI_DATA AS REAL CHECK
(value >= 0 AND value <= 10);