# SIE557: Homework2
# 1. Create a FriendsDB2 and the (new) ‘my_contacts’ table in this database. Use MySQL Workbench or MAMP, import and run the SQL script and create a new table with the inserted data
# ------------------------------------------------------------
use friendsdb2;

CREATE TABLE mycontacts (
  last_name varchar(30),
  first_name varchar(20) ,
  email varchar(50) ,
  gender char(1),
  birthday date,
  profession varchar(50),
  location varchar(50),
  status varchar(20),
  interests varchar(100),
  seeking varchar(100),
  contact_id int not null auto_increment, primary key (contact_id) );

insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','kayaking, reptiles','relationship, friends');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women','women to date');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','sailing, fishing, yachting','women for casual relationships');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','fishing, drinking','new job');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','RPG','nothing');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','collecting books, scuba diving','friends');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','cooking','employment');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','acting, dancing','new job');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','RPG, anime','friends');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','poetry, screenwriting','nothing');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`, `profession`,`location`) values ('Toth','Anne','Anne_Toth@leapinlimos.com','F','1969-11-18', 'Artist','San Fran, CA');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`, `profession`,`location`) values ('Manson','Anne','am86@objectville.net','F','1977-08-09', 'Baker','Seattle, WA');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`, `profession`,`location`) values ('Hardy','Anne','anneh@b0tt0msup.com','F','1963-04-18', 'Teacher','San Fran, CA');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`, `profession`,`location`) values ('Parker','Anne','annep@starbuzzcoffee.com','F','1983-01-10', 'Student','San Fran, CA');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`, `profession`,`location`) values ('Blunt','Anne','anneblunt@breakneckpizza.com','F','1959-10-09', 'Web Designer','San Fran, CA');
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`, `profession`,`location`) values ('Jacobs','Anne','anne99@objectville.net','F','1968-02-05', 'Computer Programmer','San Jose, CA');

select * from mycontacts;

# 2. Update the table in the following way and provide the necessary SQL statements:
# 2.1 Write a query that updates the row for Jamie Hamilton with her new name “Jamie Smith-Hamilton” if you only know her first and last name?
set sql_safe_updates = 0; 
update mycontacts set last_name = 'Smith-Hamilton', first_name = 'Jamie' where last_name = 'Hamilton';
select * from mycontacts;

# 2.2 Insert a new contact for Lindsay Vonn (and try to find out the relevant information about her on the web to fill out the columns, and make up the rest that you cannot find out).
insert into mycontacts (last_name, first_name,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) values ('Vonn','Lindsey','info@lindseyvonnfoundation.org','F','1984-10-18','Alpine Ski Racer','Los Angeles, CA','divorced','sport retirement, advertizing','new career');
select * from mycontacts;

# 2.3  Update Renee Kroger’s entry so it shows that she is remarried now and moved to Fresno, CA. (Which value should you take to update the column? Married or remarried? Why?)
update mycontacts set status = 'married', location = 'Fresno, CA' where contact_id = 7;
select * from mycontacts;

# 2.4 Update Joe Franklin’s hobbies to rock climbing
update mycontacts set interests = 'rock climbing' where contact_id = 4;
select * from mycontacts;

#3. Query the updated my_contacts table as follows: 
#3.1 Find all the contacts who live in Southern California. (What is a good/convenient way to formulate the query? Think about the examples we had in class using sets and IN.)
select * from mycontacts where location like '%CA';

# 3.2 Find all the contacts who are married and live in Southern California.
select * from mycontacts where location like '%CA' and status = 'married';

# 3.3 Find all the contacts that are between 25 and 45 and married or single. 
select * from mycontacts where status in ('married', 'single') and birthday between '1974-01-01' and '1994-01-01';

# 3.4 Find all the contacts that are either single or married and work in the computer field.
select * from mycontacts where status in ('married', 'single') and profession in ('Software Sales', 'System Administrator', 'UNIX Sysadmin', 'Computer Programmer', 'Web Designer');