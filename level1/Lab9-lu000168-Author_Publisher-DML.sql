-- FileName: lu000168-Author_Publisher-DML.sql
-- Date: 20 November 2020
-- Author: Wentao Lu
-- Comment: Lab9

--Delete the data before populating the tables:
DELETE FROM Inventory;
DELETE FROM Books;
DELETE FROM Authors;
DELETE FROM Borrowers;
DELETE FROM Publishers;

--Populate Publishers Table
INSERT INTO Publishers VALUES ('HARP','Harper');
INSERT INTO Publishers VALUES ('ROSI','Rosiya Press');
INSERT INTO Publishers VALUES ('SELF','Self Press');
INSERT INTO Publishers VALUES ('WILE','Wiley');

--Populate Authors Table
INSERT INTO Authors VALUES ('COELHOP','Pualo Coelho');
INSERT INTO Authors VALUES ('TOLSTOY','Leo Tolstoy');
INSERT INTO Authors VALUES ('ACHEBEC','Chinua Achebe');
INSERT INTO Authors VALUES ('LEEH', 'Harper Lee');

--Populate Borrowers Table
INSERT INTO Borrowers VALUES ('MORZ','Zev Moriv');
INSERT INTO Borrowers VALUES ('GATD','Dof Gatum');
INSERT INTO Borrowers VALUES ('TOSF','Gin Tosig');
INSERT INTO Borrowers VALUES ('FELT','Taz Felor');
INSERT INTO Borrowers VALUES ('FIJJ','Juv Fijoy');
INSERT INTO Borrowers VALUES ('LUHK','Kit Luhuh');

--Write INSERT statements to add two borrowers
INSERT INTO Borrowers VALUES ('SULH','Heyia Suls');
INSERT INTO Borrowers VALUES ('KURJ','Jileau Kurc');

--Write UPDATE statements to change the name from Heyia Suls to Hayia Suls
UPDATE Borrowers SET borrowerName = 'Hayia Suls'
WHERE borrowerID = 'SULH';

--Populate Books Table
INSERT INTO Books VALUES ('ALCHE','The Alchemist','COELHOP','HARP');
INSERT INTO Books VALUES ('ANNAK','Anna Karenina','TOLSTOY','ROSI');
INSERT INTO Books VALUES ('TFA','Things Fall Apart','ACHEBEC','SELF');
INSERT INTO Books VALUES ('TKAMB','To Kill A MockingBird','LEEH','WILE');
INSERT INTO Books VALUES ('WNP','War and Peace','TOLSTOY','ROSI');

--Populate Inventory Table
INSERT INTO Inventory VALUES ('ALCHE','1','MORZ');
INSERT INTO Inventory VALUES ('ALCHE','2','GATD');
INSERT INTO Inventory VALUES ('ALCHE','3','TOSF');
INSERT INTO Inventory VALUES ('ANNAK','1','FELT');
INSERT INTO Inventory VALUES ('TFA','1','FIJJ');
INSERT INTO Inventory VALUES ('TFA','2','GATD');
INSERT INTO Inventory VALUES ('TKAMB','1','LUHK');
INSERT INTO Inventory VALUES ('WNP','1','LUHK');

