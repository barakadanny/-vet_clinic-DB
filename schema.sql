/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id integer PRIMARY KEY AUTOINCREMENT,
    name varchar(100),
    data_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal
);