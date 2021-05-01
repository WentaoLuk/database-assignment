--Student Name: Wentao Lu
--Student ID: 040991469
--Course ID: CST8215 362
--Description: Lab11

-- Filename: LearnTrig-Query.sql
-- Query statements to test trigger in LearnTrigger lab

SELECT * FROM Employee_T;
SELECT * FROM Employee_Audit_T;

--Test 1: Update both the first and the last name at one time
UPDATE Employee_T 
SET   First_Name = 'SiurNew' ,
	  Last_Name = 'VehezNew' 
WHERE Last_Name = 'Vehez';

--Test 2: update only the first name:
UPDATE Employee_T SET First_Name = 'Biun' WHERE First_Name = 'Buin';
UPDATE Employee_T SET First_Name = 'Evan' WHERE First_Name = 'Wentao';
UPDATE Employee_T SET First_Name = 'Yiix' WHERE First_Name = 'Yeex';
UPDATE Employee_T SET First_Name = 'Pedro' WHERE First_Name = 'Pedor';

-- no change becuase Last_Name 'Biun' does not exist
UPDATE Employee_T SET Last_Name = 'Biun' WHERE Last_Name = 'Buin';

-- no change because Last_Name 'Zugud' does not exist
UPDATE Employee_T SET Last_Name = 'Zugud' WHERE Last_Name = 'Zugod';

-- Test 3: Update only the last name
UPDATE Employee_T SET Last_Name = 'Zugod' WHERE Last_Name = 'Zogud';

-- Test 4: update multiple rows
UPDATE Employee_T SET Last_Name = 'Name Has o' WHERE First_Name LIKE '%o%';
UPDATE Employee_T SET Last_Name = 'Name Has e' WHERE First_Name LIKE '%e%';


SELECT * from Employee_Audit_T;

-- eof: LearnTrig-Query.sql