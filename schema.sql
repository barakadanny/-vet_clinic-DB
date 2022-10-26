/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    data_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal
);

-- update table animals by adding a new column species with type varchar(100)
ALTER TABLE animals ADD COLUMN species varchar(100);
