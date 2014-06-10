CREATE TABLE aus
(
    id    integer not null,
    label integer,
    data1 float,
    data2 float,
    PRIMARY KEY(id) 
);

PARTITION TABLE aus ON COLUMN id;

CREATE PROCEDURE FROM CLASS lr.procedures.Solve;
PARTITION PROCEDURE Solve ON TABLE aus COLUMN id;