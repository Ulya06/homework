--Создать таблицу employees
--id serial  primary key,
--employee_name Varchar(50) not null
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;

--Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Maria'),
	   ('Dasha'),
	   ('Olivia'),
	   ('Grace'),
	   ('Ella'),
	   ('Sophia'),
	   ('Scarlett'),
	   ('Alice'),
	   ('Bethany'),
	   ('Heidi'),
	   ('Paige'),
	   ('Jack'),
	   ('Joseph'),
	   ('Harry'),
	   ('Alfie'),
	   ('Jacob'),
	   ('Thomas'),
	   ('Oscar'),
	   ('William'),
	   ('Joshua'),
	   ('George'),
	   ('Ivy'),
	   ('Florence'),
	   ('Hurriet'),
	   ('Maddison'),
	   ('Zoe'),
	   ('Maryam'),
	   ('Ethan'),
	   ('Noah'),
	   ('Archie'),
	   ('Henry'),
	   ('Leo'),
	   ('Oliver'),
	   ('David'),
	   ('Ryan'),
	   ('Dexter'),
	   ('Connor'),
	   ('Albert'),
	   ('Austin'),
	   ('Stanley'),
	   ('Theodore'),
	   ('Owen'),
	   ('Caleb'),
	   ('Mia'),
	   ('Emma'),
	   ('Melanie'),
	   ('Bridget'),
	   ('Miranda'),
	   ('Irene'),
	   ('Victoria'),
	   ('Barbara'),
	   ('Rebecca'),
	   ('Deborah'),
	   ('Vivian'),
	   ('Kerry'),
	   ('Parker'),
	   ('Morgan'),
	   ('Alex'),
	   ('Nat'),
	   ('Robbie'),
	   ('Terry'),
	   ('Eva'),
	   ('Anastasia'),
	   ('Diana'),
	   ('Veronica'),
	   ('Katherine'),
	   ('Anna'),
	   ('Laura'),
	   ('Pamela'),
	   ('Tracy');

	  
--Создать таблицу salary
--id Serial  primary key,
--monthly_salary Int not null
create table salary ( 
	id serial  primary key,
	monthly_salary int not null
);
select * from salary;	   

--Наполнить таблицу salary 15 строками: 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500
insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

	  
--Создать таблицу employee_salary
--id Serial  primary key,
--employee_id Int not null, unique
--salary_id Int not null
 create table employee_salary ( 
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
select * from employee_salary;


--Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (1, 5),
	   (2, 1),
	   (3, 6),
	   (4, 7),
	   (5, 2),
	   (6, 9),
	   (7, 10),
	   (8, 15),
	   (9, 11),
	   (10, 3),
	   (11, 4),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 9),
	   (16, 8),
	   (17, 7),
	   (18, 6),
	   (19, 5),
	   (20, 4),
	   (21, 3),
	   (22, 2),
	   (23, 1),
	   (24, 12),
	   (25, 15),
	   (26, 13),
	   (27, 14),
	   (28, 7),
	   (29, 9),
	   (30, 8),
	   (81, 7),
	   (82, 6),
	   (83, 3),
	   (84, 5),
	   (85, 8),
	   (86, 2),
	   (87, 11),
	   (88, 13),
	   (89, 14),
	   (90, 15);
	   
--Создать таблицу roles
--id Serial  primary key,
--role_name int not null unique
create table roles ( 
	id serial primary key,
	role_name int not null unique
);
 select * from roles;

--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками
insert into roles (role_name)
values ('Junior Python developer'), 
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial  primary key,
	employee_id int not null unique,
	role_id int not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
);

select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values (1, 2),
	   (2, 3),
	   (3, 4),
	   (4, 1),
	   (5, 5),
	   (6, 6),
	   (7, 8),
	   (8, 7),
	   (9, 9),
	   (10, 11),
	   (11, 10),
	   (12, 13),
	   (13, 12),
	   (14, 17),
	   (15, 16),
	   (16, 15),
	   (17, 14),
	   (18, 18),
	   (19, 19),
	   (20, 20),
	   (21, 15),
	   (22, 14),
	   (23, 13),
	   (24, 12),
	   (25, 10),
	   (26, 18),
	   (27, 19),
	   (28, 17),
	   (29, 12),
	   (30, 10),
	   (31, 19),
	   (32, 13),
	   (33, 14),
	   (34, 15),
	   (35, 11),
	   (36, 10),
	   (37, 9),
	   (38, 6),
	   (39, 8),
	   (40, 7);
	   
	   
