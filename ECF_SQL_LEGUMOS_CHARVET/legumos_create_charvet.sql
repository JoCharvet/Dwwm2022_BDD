DROP TABLE IF EXISTS Sales CASCADE;
DROP TABLE IF EXISTS Vegetables CASCADE;

CREATE TABLE Vegetables
(
	Id INT PRIMARY KEY
	,Name VARCHAR(50) NOT NULL
	,Variety VARCHAR(50) NOT NULL
	,PrimaryColor VARCHAR(20) NOT NULL
	,LifeTime INT NOT NULL -- >0 je n'ai plus la syntaxe du check 
	,Fresh DECIMAL(1) NOT NULL DEFAULT 0
);

CREATE TABLE Sales
(
	SaleId SERIAL PRIMARY KEY
	,SaleDate DATE NOT NULL
	,SaleWeight INT NOT NULL   --> >0
	,SaleUnitPrice DECIMAL(5,2)  --> >0
	,SaleActive DECIMAL(1)
	,Id INT NOT NULL
	,FOREIGN KEY (Id) REFERENCES Vegetables(Id)
);