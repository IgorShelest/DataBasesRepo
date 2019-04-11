DROP TABLE INSTRUCTOR;

CREATE TABLE INSTRUCTOR 
(
	ins_id    integer PRIMARY KEY NOT NULL,
	lastname  varchar (30) NOT NULL,
	firstname varchar (30) NOT NULL,
	city      varchar (30) NOT NULL,
	country   char(2)
);

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country) VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA');

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country) VALUES (2, 'Chong', 'Raul', 'Toronto', 'CA'), (3, 'Vasudevan', 'Hima', 'Chicago', 'US');

SELECT * FROM INSTRUCTOR;

SELECT lastname, firstname, country FROM INSTRUCTOR WHERE city = 'Toronto';

UPDATE INSTRUCTOR SET city = 'Markham' WHERE lastname = 'Ahuja';

DELETE FROM INSTRUCTOR WHERE lastname = 'Chong' AND firstname = 'Raul';

SELECT * FROM INSTRUCTOR;