SELECT * FROM manufacturers;
SELECT * FROM planes;

-- a
SELECT plane_ref,plane_autonomy,plane_speed,plane_maker
FROM planes
NATURAL JOIN manufacturers
ORDER BY plane_speed;


-- b
SELECT plane_ref, plane_capacity, plane_autonomy, plane_maker 
FROM planes
NATURAL JOIN manufacturers
ORDER BY plane_maker ASC, plane_autonomy DESC;

-- c
SELECT * FROM planes
NATURAL JOIN manufacturers 
WHERE plane_maker LIKE 'B%';

-- d
SELECT * FROM planes
WHERE  plane_speed >1000 AND plane_capacity >10;

-- e
SELECT plane_maker , COUNT(planes.plane_ref) AS nb_avion , AVG(planes.plane_speed) AS vitesse_moyenne
FROM manufacturers
NATURAL JOIN planes
GROUP BY plane_maker_id;

-- f
SELECT plane_maker,plane_max_cap.plane_ref AS biggest_capacity_plane_ref 
	,plane_max_cap.plane_capacity AS biggest_cap
	,plane_max_autonomy.plane_ref AS biggest_autonomy_ref
	,plane_max_autonomy.plane_autonomy AS biggest_autonomy
, GREATEST(plane_capacity) AS plane_max_cap 
, GREATEST(plane_autonomy)   AS plane_max_autonomy
FROM planes
NATURAL JOIN manufacturers 
GROUP BY manufacturers.plane_maker_id
;

SELECT plane_maker, (SELECT GREATEST(planes.plane_capacity) FROM planes
					 NATURAL JOIN manufacturers
					 WHERE manufacturers.plane_maker_id= planes.plane_maker_id  
					 GROUP BY manufacturers.plane_maker_id,planes.plane_capacity) AS plane_max_cap_ref, plane_capacity  AS plane_max_cap_capacity 
FROM manufacturers
INNER JOIN planes AS plane_max_cap ON plane_max_cap.plane_maker_id = manufacturers.plane_maker_id AND plane_max_cap.plane_capacity > plane_max_cap.plane_max_cap.plane_capacity 
GROUP BY manufacturers.plane_maker_id


SELECT MAX(planes.plane_capacity) as max_cap FROM planes
NATURAL JOIN manufacturers
HAVING plane_capacity = GREATEST(planes.plane_capacity)
GROUP BY manufacturers.plane_maker_id;

SELECT plane_maker,plane_ref, plane_capacity FROM planes
NATURAL JOIN manufacturers
GROUP BY manufacturers.plane_maker,planes.plane_ref
HAVING GREATEST(plane_capacity)= plane_capacity
;

SELECT * FROM planes WHERE GREATEST(planes.plane_capacity) = planes.plane_capacity