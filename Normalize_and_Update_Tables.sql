# SIE 557 - Homework 3: Normal Tables
#  Eugenie Valerie Kamgue

# 1. The first question is answerd on the Excel sheet. 

# 2. SQL statements to create: 
# 2.1 Formulate SQL statements to create the five tables. The entity tables will have primary keys, and the relationship tables will have foreign keys referencing other entity tables.

create table PizzaLovers(
PizzaLover_id int not null auto_increment, primary key (PizzaLover_id),
PizzaLover_Name varchar(30) not null);

create table Pizzas(
Pizza_id int not null auto_increment, primary key (Pizza_id),
Pizza_Name varchar(40) not null);

create table Toppings(
Topping_id int not null auto_increment, primary key (Topping_id),
Topping_Name varchar(30) not null);

create table PizzaLovers_Pizzas(
PizzaLover_id int not null,
Pizza_id int not null,
primary key (PizzaLover_id, Pizza_id),
foreign key (PizzaLover_id) references
PizzaLovers (PizzaLover_id),
foreign key (Pizza_id) references
pizzas (Pizza_id));

create table Pizzas_Toppings(
Pizza_id int not null,
Topping_id int not null,
primary key (Pizza_id, Topping_id),
foreign key (Pizza_id) references
pizzas (Pizza_id),
foreign key (Topping_id) references
Toppings (Topping_id));

#2.2 Formulate SQL statements to insert the data given in the table above into the three relations (observe the insertion order, entity tables first, then relationship tables!)
insert into PizzaLovers (PizzaLover_Name)  values ('Aaron');
insert into PizzaLovers (PizzaLover_Name) values ('Sarah');
insert into PizzaLovers (PizzaLover_Name) values ('Silvia');
insert into PizzaLovers (PizzaLover_Name) values ('Valerie');
insert into PizzaLovers (PizzaLover_Name) values ('Isaac');
insert into PizzaLovers (PizzaLover_Name) values ('Thea');
insert into PizzaLovers (PizzaLover_Name) values ('Brett');

select * from PizzaLovers;

insert into Pizzas (Pizza_Name) values ('PizzaMargherita');
insert into Pizzas (Pizza_Name) values ('WhitePizza');
insert into Pizzas (Pizza_name) values ('RedPizza');

select * from Pizzas;

insert into Toppings (Topping_Name) values ('Tomatoes');
insert into Toppings (Topping_Name) values ('Mozzarella');
insert into Toppings (Topping_Name) values ('Basil');
insert into Toppings (Topping_Name) values ('Parmesan');
insert into Toppings (Topping_Name) values ('Oregano');
insert into Toppings (Topping_Name) values ('Oliveoil');

select * from Toppings;

insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (1,1);
insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (2,1);
insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (3,1);
insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (4,2);
insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (5,2);
insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (6,3);
insert into PizzaLovers_Pizzas (PizzaLover_id, Pizza_id) values (7,3);

select * from PizzaLovers_Pizzas;

insert into Pizzas_Toppings values (1,1);
insert into Pizzas_Toppings values (1,2);
insert into Pizzas_Toppings values (1,3);
insert into Pizzas_Toppings values (2,2);
insert into Pizzas_Toppings values (2,4);
insert into Pizzas_Toppings values (2,5);
insert into Pizzas_Toppings values (3,1);
insert into Pizzas_Toppings values (3,6);

select * from Pizzas_Toppings;

# 3. SQL statements to query:
#  3.1 Create an SQL statement that retrieves the toppings for WhitePizza.
select Topping_Name from Toppings, Pizzas_Toppings, Pizzas
where Toppings.Topping_id = Pizzas_Toppings.Topping_id 
and Pizzas.Pizza_id = Pizzas_Toppings.Pizza_id and Pizzas.Pizza_name ='WhitePizza';

# 3.2 Create an SQL statement that retrieves the names of Aaron’s favorite pizzas
select Pizza_Name from Pizzas, PizzaLovers_Pizzas, PizzaLovers
where Pizzas.Pizza_id = PizzaLovers_Pizzas.Pizza_id
and PizzaLovers_Pizzas.PizzaLover_id = PizzaLovers.PizzaLover_id and PizzaLovers.PizzaLover_Name = 'Aaron'; 