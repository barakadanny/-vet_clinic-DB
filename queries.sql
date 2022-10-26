/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT name from animals WHERE date_of_birth between '2016-01-01' and '2019-12-31';
SELECT name from animals WHERE neutered = 'true' and escape_attempts < 3;
SELECT date_of_birth from animals WHERE name = 'Agumon' or name = 'Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.4;
SELECT * from animals WHERE neutered = 'true';
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg between 10.4 and 17.3;

BEGIN TRANSACTION;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN TRANSACTION;
UPDATE animals SET species = 'digimon' WHERE name like '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT point1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO point1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals;
SELECT MIN(weight_kg), MAX(weight_kg) FROM animals;
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
