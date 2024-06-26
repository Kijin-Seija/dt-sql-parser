CREATE TABLE IF NOT EXISTS bar (LIKE like_table INCLUDING PROPERTIES);

CREATE TABLE foo(x,y) AS SELECT a,b FROM t;

CREATE VIEW a AS SELECT * FROM t;

CREATE MATERIALIZED VIEW a AS SELECT * FROM t;

SELECT * FROM table1 GROUP BY a;

INSERT INTO orders SELECT * FROM new_orders;

INSERT INTO cities VALUES (1, 'San Francisco');

CREATE SCHEMA IF NOT EXISTS test;

USE information_schema;