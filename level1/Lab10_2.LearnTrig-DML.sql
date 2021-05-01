--Student Name: Wentao Lu
--Student ID: 040991469
--Course ID: CST8215 362
--Description: Lab11

-- Filename: LearnTrig-DML.sql
-- Last Modified: 23 Nov 2018

-- Notice there is no Employee_T ID data value, even thought it is a prime key
-- The DATA type SERIAL allocates a new number each time a row is inserted

DELETE FROM Employee_T;

INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Siur', 'Vehez' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Buin', 'Nifay' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Voar', 'Pawen' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Faed', 'Bijuv' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Vool', 'Zogud' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Yaar', 'Taged' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Cooq', 'Xaxey' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Caas', 'Vagob' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Yoid', 'Javec' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Noaf', 'Poyer' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Yiix', 'Sapen' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Cuej', 'Pibev' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Mueq', 'Qafad' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Peih', 'Kecax' );
--Add 10 more rows
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'William', 'Johnson' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Wentao', 'Lu' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Justin', 'Trudeau' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Vladimir', 'Putin' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Giuseppe', 'Conte' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Ludovic', 'Orban' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Jacinda', 'Ardern' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Emmanuel', 'Macron' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Pedro', 'Sánchez' );
INSERT INTO Employee_T( First_Name, Last_Name ) VALUES( 'Yoshihide', 'Suga' );
-- eof: LearnTrig-DML.sql