CREATE TABLE test (
    id integer,
    a_name varchar(255),
    UNIQUE(id)
);

INSERT INTO test (id, a_name)
VALUES ('1','je suis un record dans une table')