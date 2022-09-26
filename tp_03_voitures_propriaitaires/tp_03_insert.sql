TRUNCATE TABLE cars_owners CASCADE;
TRUNCATE TABLE cars CASCADE;
TRUNCATE TABLE owners CASCADE;
TRUNCATE TABLE brands CASCADE;


INSERT INTO owners
(
	owner_id,
	owner_lastname,
	owner_firstname
)
VALUES
(1,'Petit','Annie')
,(2,'Marsfall','Bénédicte')
,(3,'Doe','John')
,(4,'Bouchra','Amine')
,(5,'Jones','steeven');

INSERT INTO brands(brand_name)
VALUES('Audi'),('AMC'),('Chevrolet'),('Peugeot'),('Toyota');

INSERT INTO cars
(
	car_id
	,brand_id
	,car_name
)
VALUES
(12,3,'Chevelle')
,(16,1,'A6')
,(21,5,'Corolla')
,(19,3,'Monte Carlo')
,(27,4,'504')
,(30,1,'Q8')
,(28,2,'100 LS')
,(23,2,'Hornet')
,(26,4,'3008');

INSERT INTO cars_owners
(
	car_id
	,owner_id
	,car_registration
)
VALUES
(12,1,'AA123AA')
,(16,5,'BB274BB')
,(21,2,'CA789BA')
,(19,4,'CC546FV')
,(27,4,'CG274ZG')
,(30,3,'ER355GX')
,(28,5,'FV313FT')
,(23,5,'DE228KS')
,(26,5,'CF614PM');




