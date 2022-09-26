CREATE OR REPLACE FUNCTION emp_salary_minimum() 
	RETURNS TRIGGER AS $emp_salary_minimum$
	BEGIN
		IF NEW.emp_salary <20000 THEN
		RAISE EXCEPTION 'Le salaire ne peut pas être en dessous de 20000 euros par an.';
		END IF;
		RETURN NEW;
	END;
	$emp_salary_minimum$ LANGUAGE plpgsql;

CREATE TRIGGER  emp_salary_minimum
	BEFORE INSERT OR UPDATE ON employees
	FOR EACH ROW
	EXECUTE FUNCTION emp_salary_minimum();
