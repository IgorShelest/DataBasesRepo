###############################################################################
#							INSERT (Only values)
###############################################################################

INSERT INTO table_name VALUES (value1, value2, value3,...);
INSERT INTO Student VALUES ('5','HARSH','WEST BENGAL','XXXXXXXXXX','19');

###############################################################################
#							INSERT (In only specified columns)
###############################################################################

INSERT INTO table_name (column1, column2, column3,..) VALUES ( value1, value2, value3,..);
INSERT INTO Student (ROLL_NO, NAME, Age) VALUES ('5','PRATIK','19');

###############################################################################
#							INSERT (with SELECT)
###############################################################################

INSERT INTO first_table SELECT * FROM second_table;
INSERT INTO table1 SELECT * FROM table2 WHERE condition;
INSERT INTO first_table(names_of_columns1) SELECT names_of_columns2 FROM second_table;

###############################################################################
#							INSERT IGNORE
###############################################################################
# Cases where INSERT IGNORE avoids error:
# Upon insertion of a duplicate key where the column must contain a PRIMARY KEY or UNIQUE constraint
# Upon insertion of NULL value where the column has a NOT NULL constraint.
# Upon insertion of a row to a partitioned table where the inserted values go against the partition format.

INSERT IGNORE INTO Employee (EmployeeID, Name, City) VALUES (15002, 'Ram', 'Mumbai'), ... ;