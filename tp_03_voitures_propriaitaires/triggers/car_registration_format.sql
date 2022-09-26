CREATE OR REPLACE PROCEDURE car_registration_format() 
RETURNS TRIGGER AS $car_registration_format$
	BEGIN
		
		IF NEW.car_registration  !~ '^[A-Z]{2}[-]{1}[0-9]{3}[-]{1}[A-Z]{2}$'
			RAISE EXCEPTION 'la plaque en correspond pas au format ex : AF-145-RM'
		END IF;
	END;
	
CREATE TRIGGER car_registration_format BEFORE INSERT OR UPDATE ON cars
	FOR EACH ROW EXECUTE FUNCTION car_registration_format();