DROP DATABASE IF EXISTS hot_rods_db;
CREATE DATABASE hot_rods_db;

USE hot_rods_db;


CREATE TABLE cars (
  id INT NOT NULL AUTO_INCREMENT,
  make VARCHAR(255) NOT NULL,
  model VARCHAR(255) NOT NULL,
  year INT NOT NULL,
  engine VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE parts (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE locations (
  id INT NOT NULL AUTO_INCREMENT,
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO cars (make, model, year, engine) VALUES ('Mercury', 'Cougar XR-7', 1969, '390GT');

SELECT * FROM cars;
