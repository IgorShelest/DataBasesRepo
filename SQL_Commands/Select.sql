## SELECT

select COLUMN1, COLUMN2, ... from TABLE1 ;
select ID, NAME from COUNTRY ;
select * from COUNTRY ;

## SELECT WHERE

select * from COUNTRY where ID < 5 ;
select * from COUNTRY where CCODE = 'CA'; 

## COUNT()
# Is a built in database function that retrieves the number of rows that match the query criteria. 
# To get the total number of rows in a given table, simply issue:

select COUNT(*) from tablename

## DISTINCT 
# Is used to remove duplicate values from a result set. To retrieve unique values in a column issue:

select DISTINCT columnname from tablenam
select DISTINCT COUNTRY from MEDALS where MEDALTYPE = 'GOLD'

## LIMIT
# LIMIT is used for restricting the number of rows retrieved from the database. To retrieve just the first 10 rows in a table:

select * from tablename LIMIT 10
select * from MEDALS where YEAR = 2018 LIMIT 5