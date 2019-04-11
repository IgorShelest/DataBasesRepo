-------------------------------------------------------------------------------
--									SELECT
-------------------------------------------------------------------------------

select COLUMN1, COLUMN2 from TABLE1 ;
select ID, NAMING from COUNTRY ;
select * from COUNTRY ;

-------------------------------------------------------------------------------
--								SELECT ... WHERE ...
-------------------------------------------------------------------------------

select * from COUNTRY where ID < 5 ;
select * from COUNTRY where CCODE = 'CA';

-------------------------------------------------------------------------------
--							SELECT ... WHERE ... LIKE ...
-------------------------------------------------------------------------------

select * from PERSON where NAMING like 'Step%';
select NAMING from PERSON where NAMING like '%dymyr';
select NAMING from PERSON where NAMING like '%tysla%';

-------------------------------------------------------------------------------
--						SELECT ... WHERE ... BETWEEN ... AND ...
-------------------------------------------------------------------------------

select BOOKS from LIBRARY where NUM_OF_PAGES >= 150 AND NUM_OF_PAGES <= 350;
select BOOKS from LIBRARY where NUM_OF_PAGES between 150 AND 350;

-------------------------------------------------------------------------------
--							SELECT ... WHERE ... IN ...
-------------------------------------------------------------------------------

select firstname, secondname, age from STUDENTS where address = 'Address1' or address = 'Address2' or address = 'Address3';
select firstname, secondname, age from STUDENTS where address in ( 'Address1', 'Address2', 'Address3');

-------------------------------------------------------------------------------
--									COUNT()
-------------------------------------------------------------------------------
-- Is a built in database function that retrieves the number of rows that match the query criteria.
-- To get the total number of rows in a given table, simply issue:

select COUNT(*) from tablename;

-------------------------------------------------------------------------------
--									DISTINCT
-------------------------------------------------------------------------------
-- Is used to remove duplicate values from a result set. To retrieve unique values in a column issue:

select DISTINCT columnname from tablename ;
select DISTINCT COUNTRY from MEDALS where MEDALTYPE = 'GOLD' ;

-------------------------------------------------------------------------------
--									LIMIT
-------------------------------------------------------------------------------
-- LIMIT is used for restricting the number of rows retrieved from the database. To retrieve just the first 10 rows in a table:

select * from tablename LIMIT 10
select * from MEDALS where YEAR = 2018 LIMIT 5

-------------------------------------------------------------------------------
--      						     TOP
-------------------------------------------------------------------------------

-- value: number of rows to return from top
SELECT TOP value column1,column2 FROM tablename;
SELECT TOP 2 * FROM Student; 

-- value: percentage of number of rows to return from top
SELECT TOP value PERCENT column1,column2 FROM tablename;
SELECT TOP 50 PERCENT * FROM Student;

-------------------------------------------------------------------------------
--									ORDER BY ...
-------------------------------------------------------------------------------

select * from TABLENAME order by COLUMNNAME;
select * from TABLENAME order by COLUMNN_SEQ_NUMBER;

select * from BOOKS order by TITLE;
select * from BOOKS order by TITLE asc ;
select * from BOOKS order by TITLE desc;

-------------------------------------------------------------------------------
--								ORDER BY ... GROUP BY ...
-------------------------------------------------------------------------------

-- Select list of 'countries' from the 'author' table
-- Count that list of 'countries'
-- Create distinct records with 'country' name and number of that 'country' occurred
select country, count(country) from author group by country;

-- 'as count' gives the name 'count' to the column with number of 'country' occurrences
-- in the result set table
select country, count(country) as count from author group by country;

-- 'having' makes a restriction on the result set
-- 'countries' which occur mare then 4 times are selected
select country, count(country) as count from author group by country having count(country) > 4;
