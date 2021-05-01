--Student Name: Wentao Lu
--Student ID: 040991469
--Course ID: CST8215 362
--Description: Lab11
-- Filename: LearnTrig-DDL.sql
-- Last Modified: 18 Nov 2018
-- 23 Nov 2018 for Winter 2019

-- DROP TRIGGER first becuase TRIGGER uses FUNCTION
DROP TRIGGER IF EXISTS Emp_Name_Change ON Employee_T;
DROP FUNCTION IF EXISTS Log_Name_Change();
DROP Materialized VIEW IF EXISTS Test_MV;

-- DROP Employee_T and Employee_T_Audit Table
DROP TABLE IF EXISTS Employee_T;
DROP TABLE IF EXISTS Employee_Audit_T;

-- create Employee_T table
CREATE TABLE Employee_T(
   Employee_ID  SERIAL  PRIMARY KEY,
   First_name   VARCHAR( 40 ) NOT NULL,
   Last_Name    VARCHAR( 40 ) NOT NULL
);

-- create table to store audit detail
CREATE TABLE Employee_Audit_T(
   ID SERIAL      PRIMARY KEY,
   Employee_ID    INT4 NOT NULL,
   Old_Last_Name  VARCHAR( 40 ),
   Old_First_Name VARCHAR( 40 ),
   Changed_ON     TIMESTAMP( 6 ) NOT NULL
);


-- Note: You may insert a token between the two $$ signs
-- for example $Name$
CREATE OR REPLACE FUNCTION Log_Name_Change()
  RETURNS TRIGGER AS
$$
BEGIN
    -- check if last_name has changed
    -- compare NEW. to OLD.
		
	--If the whole name has been changed, it will trigger the update of both first and last name.	
    IF NEW.last_name <> OLD.last_name AND NEW.first_name <> OLD.first_name THEN
    INSERT INTO Employee_Audit_T( Employee_ID, Old_First_Name, Old_Last_Name, Changed_ON )
    VALUES( OLD.Employee_ID, OLD.First_Name, OLD.Last_Name, NOW() );
	
	--Or, if the only the last name has been changed, it will only trigger the update of the last name.
    ELSIF NEW.last_name <> OLD.last_name THEN
    INSERT INTO Employee_Audit_T( Employee_ID, Old_Last_Name, Changed_ON )
    VALUES( OLD.Employee_ID, OLD.Last_Name, NOW() );

	--Or, if the only the first name has been changed, 
	-- then only the first name will be recorded by the audit table.
    ELSIF NEW.first_name <> OLD.first_name THEN
    INSERT INTO Employee_Audit_T( Employee_ID, Old_First_Name, Changed_ON )
    VALUES( OLD.Employee_ID, OLD.First_Name, NOW() );
	END IF;


    RETURN NEW;
END;
$$ LANGUAGE plpgSQL;

CREATE TRIGGER Emp_Name_Change 
   BEFORE UPDATE ON Employee_T
   FOR EACH ROW 
   EXECUTE PROCEDURE Log_Name_Change();

-- eof: LearnTrig-DDL.sql