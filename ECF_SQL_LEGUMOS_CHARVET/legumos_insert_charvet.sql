TRUNCATE TABLE Vegetables,Sales RESTART IDENTITY;

INSERT INTO vegetables
(Id,"name",variety,primarycolor,lifetime)
VALUES
(1,'apple','golden','green',90)
,(2,'banana','cavendish','yellow',10)
,(3,'blueberries','bluecrop','green',8)
,(4,'cabbage','brocoli','green',60)
,(5,'carrot','de Colmar','orange',60)
,(6,'cherry','moreau','darkred',20)
,(7,'coconut','palmyre','brown',30)
,(8,'grape','aladin','green',10)
,(9,'kiwi','hayward','green',40)
,(10,'lemon','eureka','green',30)
,(11,'onion','Stuttgart','white',90);

INSERT INTO sales
(Id,SaleDate,SaleWeight,SaleUnitPrice,SaleActive)
VALUES
(2,CURRENT_DATE,4,3.99,1)
,(1,CURRENT_DATE,12,2.5,1)
,(3,CURRENT_DATE,8,2.99,0)
,(11,CURRENT_DATE,4,1.25,1)
,(11,CURRENT_DATE,11,1.25,1)
,(7,CURRENT_DATE,1,3.95,1)
,(5,CURRENT_DATE,3,1.59,0)
,(10,CURRENT_DATE,5,3.15,1)
,(4,CURRENT_DATE,4,1.49,1)
,(6,CURRENT_DATE,2,1.99,1)
,(8,CURRENT_DATE,2,1.95,0)
,(9,CURRENT_DATE,2,2.45,1);