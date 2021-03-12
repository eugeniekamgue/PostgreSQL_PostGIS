CREATE TABLE linetests (lid integer, name varchar);
SELECT AddGeometryColumn('linetests', 'line', -1, 'LINESTRING', 2);

INSERT INTO linetests (name, line) VALUES
('North West', 'LINESTRING(0 0,-1 1)'), ('North East', 'LINESTRING(0 0,1 1)'),
('South West', 'LINESTRING(0 0,-1 -1)'), ('Soutn East', 'LINESTRING(0 0,1 -1)');

select * from linetests;