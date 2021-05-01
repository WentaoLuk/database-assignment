--Lab6 DML WENTAO LU

--DELETE Statements
DELETE FROM City_T;
DELETE FROM Country_T;
--input country information
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES( 'RUS', 'Russian Federation', 144192450 ); 
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES( 'MEX', 'Mexico', 119530753 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES( 'CAN', 'Canada', 36155487 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES( 'DZA', 'Algeria', 40400000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES( 'CHN', 'China', 1376049000 ); 
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES( 'CHL', 'Chile', 18006407 );

--input city information
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 211, 'Moscow', 'RUS', 1240000 ); 
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 145, 'Mexico City', 'MEX', 8550000 ); 
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 458, 'Ottawa', 'CAN', 994837); 
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 459, 'Toronto', 'CAN', 5468971 ); 
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 238, 'Algiers', 'DZA', 3916000 ); 
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 375, 'Fuzhou', 'CHN', 7660000 ); 
INSERT INTO City_T( city_id, city_name, cntry_code, city_population ) VALUES( 218, 'Santiago', 'CHL', 5614000 ); 

--SQL Statement used to test the data.
Select * from city_t;
Select * from country_t;


