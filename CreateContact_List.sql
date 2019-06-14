use sie_557_2019;

create table contactsList(
Contact_ID int(20) not null primary key,
First_Name varchar(60) not null,
Last_Name varchar(60) not null,
Location varchar (32) null,
Interests varchar(100) null,
Marital_Status char(1) null, #'Married (M), Single(S), Other(O)'
Number_Of_Dependents int(20) null,
Dependents_Type varchar(32) null);

insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (1, 'Silvia', 'Nittel', 'Orono', 'Photography', 'S',4, 'Cats');
insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (2, 'Aaron', 'Burmeister', 'Trenton', 'Games, Genetics, Politics, and movies', 'O',2, 'Cats');
insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (3, 'Sally', 'Farrell', 'Buxton', 'Sheep farming', 'O',70, 'Animals');
insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (4, 'Brett', 'Haines', 'Seal Harbor', 'Genetics, Space, Politics, Music, Art, Gaming', 'S',1, 'Cat');
insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (5, 'Valerie', 'Kamgue', 'Winthrop', 'Programming', 'M',3, 'Children');
insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (6, 'Isaac', 'St. John', null, null, null, null, null);
insert into contactsList (Contact_ID, First_Name, Last_name, Location, Interests, Marital_Status, Number_Of_Dependents, Dependents_Type) values (7, 'Thea', 'Youngs', 'Portland', 'Reading, Gardening, Cooking', 'M',20, 'Houseplants');

select * from contactsList;
desc `contactsList`;


#'Eugenie Kamgue'