DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS countries;

CREATE TABLE countries
(
	country_code CHAR(2) PRIMARY KEY
	,country_name VARCHAR(100) NOT NULL
);

CREATE TABLE cities
(
	city_id SERIAL PRIMARY KEY
	,city_name VARCHAR(100)
	,country_code CHAR(2) NOT NULL
	,FOREIGN KEY(country_code) REFERENCES countries(country_code) 
);

