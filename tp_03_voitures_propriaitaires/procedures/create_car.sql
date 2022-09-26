CREATE OR REPLACE PROCEDURE create_car(
	car_id INT
	,car_name VARCHAR(100)
	,car_registration CHAR(7)
	,owner_id INT
	,brand_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN

	-- création de la voiture
	INSERT INTO cars
	(	
		car_id
		,car_name
		,car_registration
		,owner_id
		,brand_id
	)
	VALUES
	(
		car_id
		,car_name
		-- reconstruction de la plaque
		,CONCAT(SUBSTRING(car_registration,1,2),'-',SUBSTRING(car_registration,3,3),'-',SUBSTRING(car_registration,6,2))
		,owner_id
		,brand_id
	);
	
	
end;$$