TRUNCATE TABLE cities;
TRUNCATE TABLE countries;

INSERT INTO countries
(
	country_code
	,country_name
)
VALUES
('FR', 'France')
,('RU','Russian Federation')
,('US','United States');

INSERT INTO Cities
(
	city_name
	,country_code
)
VALUES 
('Paris','FR')
,('Lyon','FR')
,('Toulouse','FR')
,('Marseille','FR')
,('Mulhouse','FR')
,('Boston','US')
,('Los Angeles','US')
,('Washington','US')
,('New York','US')
,('Moscou','RU')
,('Saint-Pétersbourg','RU');
