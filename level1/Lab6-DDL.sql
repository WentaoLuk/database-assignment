--Lab6 DDL WENTAO LU
DROP TABLE IF EXISTS City_T;
DROP TABLE IF EXISTS Country_T;

CREATE TABLE Country_T(
	Cntry_Code			CHAR(3),
	Cntry_Name			VARCHAR(30)	NOT NULL,
	Cntry_Population	BIGINT	NULL,
	CONSTRAINT PK_Cntry_Population PRIMARY KEY(Cntry_Code)
);

CREATE TABLE City_T(
	City_ID		INT,
	City_Name	VARCHAR(30)		NOT NULL,
	Cntry_Code	CHAR(3),
	City_Population	BIGINT	NULL,
	CONSTRAINT City_ID_PK PRIMARY KEY(City_ID),
	CONSTRAINT FK_Cntry_Code FOREIGN KEY(Cntry_Code) REFERENCES Country_T(Cntry_Code)
);