/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', date '2020-02-03', '0', 'true', '10.23');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', date '2018-11-15', '2', 'true', '8');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', date '2021-01-07', '1', 'false', '15.04');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', date '2017-05-12', '5', 'true', '11');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', date '2020-02-8', '0', 'true', '-11');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', date '2021-10-15', '2', 'true', '-5.7');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', date '1993-04-03', '3', 'false', '-12.13');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', date '2005-06-12', '1', 'true', '-45');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', date '2005-06-07', '7', 'true', '20.4');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', date '1998-08-13', '3', 'true', '17');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', date '2022-05-14', '4', 'true', '22');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Maxis', date '2022-03-12', '3', 'true', '26');

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', '34');
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', '19');
INSERT INTO owners (full_name, age) VALUES ('Bob', '45');
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', '77');
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', '14');
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', '38');

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');
INSERT INTO species (name) VALUES ('Dogen');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';


UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name  = 'Gabumon' OR name ='Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';