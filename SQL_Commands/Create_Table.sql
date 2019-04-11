-------------------------------------------------------------------------------
--                                CREATE TABLE
-------------------------------------------------------------------------------

CREATE TABLE table_name
(
    column1 data_type(size),
    column2 data_type(size),
    column3 data_type(size),
    ....
);

create table TEST (
    ID integer,
    NAME varchar(30)
    );

create table COUNTRY (
    ID int,
    CCODE char(2),
    NAME varchar(2)
    );

create table COUNTRY (
    ID int NOT NULL,
    CCODE char(2),
    NAME varchar(60),
    PRIMARY KEY (ID)
    );

create table COUNTRY (
    ID integer PRIMARY KEY NOT NULL,
    CCODE char(2),
    NAME varchar(60)
    );

-------------------------------------------------------------------------------
--                               CREATE TABLE LIKE
-------------------------------------------------------------------------------
-- Create a copy of a table

CREATE TABLE newTable LIKE pets

-------------------------------------------------------------------------------
--                               CREATE TABLE AS
-------------------------------------------------------------------------------
-- Create a table from the result set

CREATE TABLE newTable as
            (SELECT * 
             FROM pets
             WHERE pets.BREED = 'German Shepherd');