DROP TABLE IF EXISTS cars_owners;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners
(
	owner_id INT PRIMARY KEY
	,owner_lastname VARCHAR(50)
	,owner_firstname VARCHAR(50)
);

CREATE TABLE brands
(
	brand_id SERIAL PRIMARY KEY
	,brand_name VARCHAR(50)
	,brand_slogan VARCHAR(255) NULL
);

CREATE TABLE cars
(
	car_id SERIAL PRIMARY KEY
	,car_name VARCHAR(100)
	,brand_id INT
	,FOREIGN KEY(brand_id) REFERENCES brands(brand_id)
);

CREATE TABLE cars_owners
(
	owner_id INT
	,car_id INT
	,car_registration CHAR(9)
	,PRIMARY KEY (car_id,owner_id)
	,FOREIGN KEY(owner_id) REFERENCES owners(owner_id)
	,FOREIGN KEY(car_id) REFERENCES cars(car_id)
)

