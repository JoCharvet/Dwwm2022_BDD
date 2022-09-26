-- requête 1 sélectionner toutes les villes
SELECT * FROM cities;

-- requête 2 Sélectionner l’identifiant et le nom de toutes les villes triées par nom de ville et par ordre alphabétique.
SELECT city_id,city_name FROM cities ORDER BY city_name ASC;

-- requête 3 Sélectionner toutes les villes avec le nom du pays associé à chaque ville. Trier la liste par code pays et par ordre 
-- alphabétique inverse.
SELECT * FROM cities 
NATURAL JOIN countries 
ORDER BY country_code DESC;

-- requête 4 Sélectionner le code ISO et le nom de tous les pays avec le nombre de villes par pays. Les pays avec le moins de villes 
-- apparaissent en 1er.
SELECT country_code,country_name, COUNT(cities.city_id)AS nombre_de_ville FROM countries
NATURAL JOIN cities
GROUP BY country_code ORDER BY nombre_de_ville ASC;

-- requête 5 correspondant a l'image
SELECT cities.city_id,cities.city_name,cities.country_code ,country_name ,  
COUNT(cit.country_code ) AS Number_of_cities
FROM countries
NATURAL JOIN  cities
INNER JOIN cities as cit ON (cities.country_code = cit.country_code) 
GROUP BY cities.city_id,cities.city_name,cities.country_code ,country_name
ORDER BY cities.city_id;

/*
SELECT city_id,city_name,country_code ,country_name ,  
(SELECT COUNT(Cit.country_code ) FROM cities AS Cit WHERE cities.country_code= country_code) AS Number_of_cities
FROM countries
NATURAL JOIN  cities
GROUP BY city_id,country_code
ORDER BY city_id;
*/
