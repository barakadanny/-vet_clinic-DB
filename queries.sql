/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT name from animals WHERE date_of_birth between '2016-01-01' and '2019-12-31';
SELECT name from animals WHERE neutered = 'true' and escape_attempts < 3;
SELECT date_of_birth from animals WHERE name = 'Agumon' or name = 'Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.4;
SELECT * from animals WHERE neutered = 'true';
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg between 10.4 and 17.3;

-- update table animals by adding a new column species with type varchar(100)
ALTER TABLE animals ADD COLUMN species varchar(100);
