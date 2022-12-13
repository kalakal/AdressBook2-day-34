use AdressBook
CREATE TABLE AdressBook
(
FirstName char(25),
LastName char(25),
City char(25),
StateName char(25),
Zip int,
Phone varchar(25),
Email varchar(25)
);
SELECT * FROM AdressBook;

INSERT INTO AdressBook VALUES('Sayali','Nikam','Pune','Maharashtra','412109','8457842345','sayalinikam@gmail.com');
INSERT INTO AdressBook VALUES('Ankita','Khairnar','Mumbai','Maharashtra','560085','954645345','ankitakhair@gmail.com');
INSERT INTO AdressBook VALUES('Sandesh','Nikam','Pune','Maharashtra','8375','76378434534','sandesh@gmail.com');
INSERT INTO AdressBook VALUES('rahul','saner','nashik','Maharashtra','574895','09384903','snaehal@gmail.com');
INSERT INTO AdressBook VALUES('Priyanka','sonawane','hyderabad','Telangana','455454','0938490334','priyanka@gmail.com');
SELECT * FROM AdressBook;
UPDATE AdressBook SET City= 'Mumbai', Phone='9011596225', Email='sandesh@gmail.com' WHERE FirstName='Sandesh';
SELECT * FROM AdressBook;

DELETE FROM AdressBook WHERE FirstName= 'rahul';
SELECT * FROM AdressBook;
DELETE FROM AdressBook WHERE FirstName= 'Priyanka';
SELECT * FROM AdressBook;
DELETE FROM AdressBook WHERE FirstName = 'Sayali';
SELECT * FROM AdressBook;
Select * from AdressBook WHERE StateName ='Telangana';
Select * from AdressBook WHERE City ='nashik';

Select COUNT(City) as City_Count FROM AdressBook;
Select COUNT(StateName) as State_Count FROM AdressBook;

------------UC8-Sorting data Alphabetically by person name------------

SELECT * FROM AdressBook ORDER BY(FirstName);
SELECT * FROM AdressBook ORDER BY(LastName);
-----------UC9-Ability to identify each Address Book with name and Type---------
alter table AdressBook add AddressBook_Name varchar(30),AddressBook_Type varchar(30);
update AdressBook set LastName = 'Family address book', LastName = 'Family' where FirstName='Ankita';
update AdressBook set FirstName = 'Friends address book', FirstName  = 'Friends' where FirstName='Sandesh';
select * from AdressBook



