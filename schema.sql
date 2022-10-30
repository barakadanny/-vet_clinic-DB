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

CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    full_name varchar(100),
    age integer
);

CREATE TABLE species (
    id BIGSERIAL PRIMARY KEY,
    name varchar(100)
);

ALTER TABLE animals ADD PRIMARY KEY (id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id BIGINT REFERENCES species(id);
ALTER TABLE animals ADD owner_id BIGINT REFERENCES owners(id);

CREATE TABLE vets (
    id BIGSERIAL PRIMARY KEY,
    name varchar(100),
    age integer,
    date_of_graduation date
);

CREATE TABLE specializations (
    species_id integer,
    vet_id integer
);

CREATE TABLE visits (
    animal_id int,
    vet_id int,
    date_of_visit date
);
