-- FileName: lu000168-Author_Publisher-DDL.sql
-- Date: 20 November 2020
-- Author: Wentao Lu
-- Comment: Lab9

--Drop view
DROP VIEW IF EXISTS Inventory_Info_V;

--Drop tables in a reasonable order:
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Borrowers;
DROP TABLE IF EXISTS Authors;
DROP TABLE IF EXISTS Publishers;

--CREATE TABLES FROM PARENT TABLES TO CHILD TABLES
CREATE TABLE Publishers(
	PublisherID 	CHAR(4)		NOT NULL PRIMARY KEY,
	PublisherName	VARCHAR(30)	NOT NULL
);

CREATE TABLE Authors(
	AuthorID	VARCHAR(15)	NOT NULL	PRIMARY KEY,
	AuthorName	VARCHAR(30)	NOT NULL	
);
	

CREATE TABLE Borrowers(
	BorrowerID		char(4)		NOT NULL	PRIMARY KEY,
	BorrowerName	VARCHAR(30)	NOT NULL
);
	
CREATE TABLE Books(
	BookID			VARCHAR(8)	NOT NULL	PRIMARY KEY,
	BookTitle		VARCHAR(30)	NOT NULL,
	AuthorID		VARCHAR(15)	NOT NULL,
	PublisherID		CHAR(4)		NOT NULL,
	CONSTRAINT PK_AuthorID FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
	CONSTRAINT PK_PublisherID FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);
	
CREATE TABLE Inventory(
	BookID			VARCHAR(8)	NOT NULL,
	InventoryID		VARCHAR(3)	NOT NULL,
	BorrowerID		VARCHAR(8)	NOT NULL,
	CONSTRAINT PK_BookID		FOREIGN KEY (BookID)	 REFERENCES Books(BookID),
	CONSTRAINT PK_BorrowerID	FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID),
	CONSTRAINT PK_Inventory		PRIMARY KEY (BookID, InventoryID)
);

--Create VIEW;
CREATE VIEW Inventory_Info_V AS SELECT * FROM Inventory;