SQL_DDL
Первая часть.

Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not NULL
);
------------------------------------------------------------------------------------------------------
2) Заполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Кузнецов Александр'),
('Судаков Семён'),
('Зубов Кирилл'),
('Зуева Агата'),
('Кузнецов Даниил'),
('Севастьянов Даниил'),
('Кулагина Ева'),
('Митрофанова Ирина'),
('Никифоров Иван'),
('Панова Есения'),
('Лукьянова Евгения'),
('Усова Айлин'),
('Седов Михаил'),
('Кузнецов Виталий'),
('Фомичев Андрей'),
('Казаков Александр'),
('Филатов Михаил'),
('Лавров Илья'),
('Тарасов Лев'),
('Коновалова Анастасия'),
('Фомина Камила'),
('Фомина Стефания'),
('Савина Алиса'),
('Молчанов Артур'),
('Демин Михаил'),
('Кузьмина Дарина'),
('Медведева Ульяна'),
('Семенова Владислава'),
('Родионова Мария'),
('Блохина Милана'),
('Иванова Марианна'),
('Богданова Анна'),
('Давыдов Никита'),
('Леонова Анастасия'),
('Савельева Софья'),
('Зайцев Фёдор'),
('Николаева Екатерина'),
('Яковлева Полина'),
('Григорьев Леонид'),
('Константинов Лев'),
('Ежова Ксения'),
('Кузина Александра'),
('Акимова Мария'),
('Сорокин Владислав'),
('Федорова Александра'),
('Полякова София'),
('Смирнов Иван'),
('Макарова Олеся'),
('Борисова Мария'),
('Шубин Мирон'),
('Терехова Варвара'),
('Дементьева Мария'),
('Аксенова Полина'),
('Лапшин Егор'),
('Филиппов Тимур'),
('Кузнецов Мирон'),
('Ермакова Вера'),
('Соболев Дмитрий'),
('Юдина Алёна'),
('Смирнова Анастасия'),
('Гусева Софья'),
('Нефедов Лев'),
('Бондарева Мария'),
('Яковлев Михаил'),
('Моргунов Иван'),
('Николаев Александр'),
('Белоусова Екатерина'),
('Калашников Максим'),
('Коновалова Мария'),
('Шульгина Ева');
------------------------------------------------------------------------------------------------------

Таблица salary

3)	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
create table salary(
id serial primary key,
monthly_salary int not null
);
------------------------------------------------------------------------------------------------------
4)	Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
insert into salary(monthly_salary)
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
------------------------------------------------------------------------------------------------------

Таблица employee_salary

5)	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
------------------------------------------------------------------------------------------------------
6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

id	employee_id	salary_id
1	3	7
2	1	4
3	5	9
4	40	13
5	23	4
6	11	2
7	52	10
8	15	13
9	26	4
10	16	1
11	33	7
...	...	...

insert into employee_salary (employee_id, salary_id)
values (3,7),
	 (1,4),
	 (5,9),
	 (40,13),
	 (23,4),
	 (11,2),
	 (52,10),
	 (15,13),
	 (26,4),
	 (16,1),
	 (33,7),
	 (2,5),
	 (4,4),
	 (6,9),
	 (7,10),
	 (8,9),
	 (9,1),
	 (10,3),
	 (12,2),
	 (13,7),
	 (14,5),
	 (17,1),
	 (18,6),
	 (19,2),
	 (20,3),
	 (21,4),
	 (22,1),
	 (24,5),
	 (25,8),
	 (100,15),
	 (101,14),
	 (102,13),
	 (103,12),
	 (104,11),
	 (105,10),
	 (106,9),
	 (107,8),
	 (108,7),
	 (109,6),
	 (110,5);
------------------------------------------------------------------------------------------------------	

Таблица roles

7)	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
create table roles(
id Serial primary key,
role_name int unique not null
);
------------------------------------------------------------------------------------------------------
8)	Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles
ALTER COLUMN role_name type VARCHAR(30);
------------------------------------------------------------------------------------------------------
9)	Наполнить таблицу roles 20 строками:
insert into roles (id, role_name)
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

------------------------------------------------------------------------------------------------------

Таблица roles_employee

10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
id Serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)	
);
------------------------------------------------------------------------------------------------------
11)	Наполнить таблицу roles_employee 40 строками:
id	employee_id	role_id
1	7	2
2	20	4
3	3	9
4	5	13
5	23	4
6	11	2
7	10	9
8	22	13
9	21	3
10	34	4
11	6	7
...	...	...

insert into roles_employee (id, employee_id,role_id )
values (1,7,2),
	 (2,20,4),
	 (3,3,9),
	 (4,5,13),
	 (5,23,4),
	 (6,11,2),
	 (7,10,9),
	 (8,22,13),
	 (9,21,3),
	 (10,34,4),
	 (11,6,7),
	 (12,70,13),
	 (13,69,12),
	 (14,68,11),
	 (15,67,10),
	 (16,66,9),
	 (17,65,8),
	 (18,64,7),
	 (19,63,6),
	 (20,62,5),
	 (21,61,4),
	 (22,60,3),
	 (23,59,2),
	 (24,58,1),
	 (25,57,4),
	 (26,56,5),
	 (27,55,6),
	 (28,54,7),
	 (29,53,8),
	 (30,52,9),
	 (31,51,10),
	 (32,50,11),
	 (33,49,12),
	 (34,48,13),
	 (35,47,4),
	 (36,46,4),
	 (37,45,4),
	 (38,44,4),
	 (39,43,4),
	 (40,42,4);




