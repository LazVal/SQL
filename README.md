# SQL
### HM_1

## Таблица employees

#### 1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

```
create table employees (
	id serial primary key,
	employee_name varchar(50) not NULL
);
```
#### 2. Заполнить таблицу employee 70 строками.
```
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
```
## Таблица salary

#### 3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
```
create table salary(
id serial primary key,
monthly_salary int not null
);
```
#### 4. Наполнить таблицу salary 15 строками:
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
```
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
```
## Таблица employee_salary
#### 5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
```
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
```
#### 6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

|id|employee_id|salary_id|
|:---|:---|:---|	
|1|3|7|
|2|1|4|
|3|5|9|
|4|40|13|
|5|23|4|
|6|11|2|
|7|52|10|
|8|15|13|
|9|26|4|
|10|16|1|
|11|33|7|
|...|...|...|	

```
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
```
## Таблица roles
#### 7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
```
create table roles(
id Serial primary key,
role_name int unique not null
);
```
#### 8. Поменять тип столба role_name с int на varchar(30)
```
ALTER TABLE roles
ALTER COLUMN role_name type VARCHAR(30);
```
#### 9. Наполнить таблицу roles 20 строками:

|id|role_name
|:---|:---|	
|1|Junior Python developer|
|2|Middle Python developer|
|3|Senior Python developer|
|4|Junior Java developer|
|5|Middle Java developer|
|6|Senior Java developer|
|7|Junior JavaScript developer|
|8|Middle JavaScript developer|
|9|Senior JavaScript developer|
|10|Junior Manual QA engineer|
|11|Middle Manual QA engineer|
|12|Senior Manual QA engineer|
|13|Project Manager|
|14|Designer|
|15|HR|
|16|CEO|
|17|Sales manager|
|18|Junior Automation QA engineer|
|19|Middle Automation QA engineer
|20|Senior Automation QA engineer|
```
insert into roles (id, role_name)
values (1, 'Junior Python developer'),
		(2, 'Middle Python developer'),
		(3, 'Senior Python developer'),
		(4, 'Junior Java developer'),
		(5, 'Middle Java developer'),
		(6, 'Senior Java developer'),
		(7, 'Junior JavaScript developer'),
		(8, 'Middle JavaScript developer'),
		(9, 'Senior JavaScript developer'),
		(10, 'Junior Manual QA engineer'),
		(11, 'Middle Manual QA engineer'),
		(12, 'Senior Manual QA engineer'),
		(13, 'Project Manager');
```
## Таблица roles_employee
#### 10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
```
create table roles_employee(
id Serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)	
);
```
#### 11. Наполнить таблицу roles_employee 40 строками:
|id|employee_id|role_id|
|:---|:---|:---|	
|1|7|2|
|2|20|4|
|3|3|9|
|4|5|13|
|5|23|4|
|6|11|2|
|7|10|9|
|8|22|13|
|9|21|3|
|10|34|4|
|11|6|7|
|...|...|...|

```
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
```

### HM_2
```
CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);
```
#### 1.Вывести все поля и все строки
```
select * from roles_employee;
```
#### 2.Вывести всех студентов в таблице
```
select name
from students;
```
#### 3.Вывести только Id пользователей
```
select id
from students;
```
#### 4.Вывести только имя пользователей
```
select name
from students;
```
#### 5.Вывести только email пользователей
```
select email
from students;
```
#### 6.Вывести имя и email пользователей
```
select email, name
from students;
```
#### 7.Вывести id, имя, email и дату создания пользователей
```
select id, name, email, created_on
from students;
```
#### 8.Вывести пользователей где password 12333
```
select * from students
where id = '12333';
```
#### 9.Вывести пользователей которые были созданы 2021-03-26 00:00:00
```
select * from students
where created_on = '2021-03-26 00:00:00';
```
#### 10.Вывести пользователей где в имени есть слово Анна
```
select * from students
where name like '%Anna%';
```
#### 11.Вывести пользователей где в имени в конце есть 8
```
select * from students
where name like '%8';
```
#### 12.Вывести пользователей где в имени в есть буква а
```
select * from students
where name like '%a%';
```
#### 13.Вывести пользователей которые были созданы 2021-07-12 00:00:00
```
select * from students
where created_on = '2021-07-12 00:00:00';
```
#### 14.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
```
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';
```
#### 15.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
```
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
```
#### 16.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
```
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
```
#### 17.Вывести пользователя у которых id равен 110
```
select * from students
where id = '110';
```
#### 18.Вывести пользователя у которых id равен 153
```
select * from students
where id = '153';
```
#### 19.Вывести пользователя у которых id больше 140
```
select * from students
where id > '140';
```
#### 20.Вывести пользователя у которых id меньше 130
```
select * from students
where id < '130';
```
#### 21.Вывести пользователя у которых id меньше 127 или больше 188
```
select * from students
where id < '127' or id > '188';
```
#### 22.Вывести пользователя у которых id меньше либо равно 137
```
select * from students
where id <= '127';
```
#### 23.Вывести пользователя у которых id больше либо равно 137
```
select * from students
where id >= '127';
```
#### 24.Вывести пользователя у которых id больше 180 но меньше 190
```
select * from students
where id > '180' and id<'190';
```
#### 25.Вывести пользователя у которых id между 180 и 190
```
select * from students
where id between 180 and 190;
```
#### 26.Вывести пользователей где password равен 12333, 1m313, 123313
```
select * from students
where password in ('12333','1m313','123313');
```
#### 27.Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
```
select * from students
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00','2021-03-26 00:00:00');
```
#### 28.Вывести минимальный id 
```
select min (id)
from students;
```
#### 29.Вывести максимальный
```
select max (id)
from students;
```
#### 30.Вывести количество пользователей
```
select count (name)
from students;
```
#### 31.Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
```
select id, name, created_on
from students
order by created_on ASC;
```
#### 32.Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
```
select id, name, created_on
from students
order by created_on DESC;
```

### HM_3

#### 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
```
select employees.employee_name, salary.monthly_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id 
```

 #### 2. Вывести всех работников у которых ЗП меньше 2000.
 ```
select employees.employee_name, salary.monthly_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id 
where monthly_salary < 2000
```
 #### 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```
select employee_salary.employee_id, employees.employee_name, salary.monthly_salary 
from salary left join employee_salary 
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id = employee_salary.employee_id
where employees.employee_name is NULL
```

 #### 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 ```
select employee_salary.employee_id, employees.employee_name, salary.monthly_salary 
from salary left join employee_salary 
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id = employee_salary.employee_id
where employees.employee_name is null and monthly_salary < 2000
```
 #### 5. Найти всех работников кому не начислена ЗП.
```
 select employees.id, employees.employee_name, salary.monthly_salary 
 from employees left join employee_salary
 on employees.id = employee_salary.employee_id 
 left join salary
 on salary.monthly_salary = employee_salary.salary_id
 ```
 #### 6. Вывести всех работников с названиями их должности.
 ```
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
```
#### 7. Вывести имена и должность только Java разработчиков.
```
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Java %'
```
#### 8. Вывести имена и должность только Python разработчиков.
```
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Python%'
```

#### 9. Вывести имена и должность всех QA инженеров.
```
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%'
```

 #### 10. Вывести имена и должность ручных QA инженеров.
 ```
 select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Manual QA%'
 ```
 
 #### 11. Вывести имена и должность автоматизаторов QA
 ```
  select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Automatedl QA%'
```

 #### 12. Вывести имена и зарплаты и роли Junior специалистов
 ```
select employees.employee_name, role_name, salary.monthly_salary 
from employees
join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like ('%Junior%'); 
```

 #### 13. Вывести имена и зарплаты и роли Middle специалистов
```
 select employees.employee_name, salary.monthly_salary, roles.role_name 
 from employees
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Middle%'); 
 ```
#### 14. Вывести имена и зарплаты и роли Senior специалистов
```
 select employees.employee_name, salary.monthly_salary, roles.role_name 
 from employees
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Senior%'); 
```
#### 15. Вывести зарплаты Java разработчиков
```
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Java %'); 
```
#### 16. Вывести зарплаты Python разработчиков
```
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Python%');
```
 #### 17. Вывести имена и зарплаты Junior Python разработчиков
 ```
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Junior Python%');
```
#### 18. Вывести имена и зарплаты Middle JS разработчиков
 ```
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Middle JavaScript%');
```
#### 19. Вывести имена и зарплаты Senior Java разработчиков
```
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Senior Java %');
 ```
#### 20. Вывести зарплаты Junior QA инженеров
 ```
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('Junior%QA');
 ```
#### 21. Вывести среднюю зарплату всех Junior специалистов
```
select avg(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Junior%')
```
#### 22. Вывести сумму зарплат JS разработчиков
```
select sum(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%JavaScript%')
```
#### 23. Вывести минимальную ЗП QA инженеров
```
select min(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%QA%')
```
#### 24. Вывести максимальную ЗП QA инженеров
```
select max(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%QA%')
```
#### 25. Вывести количество QA инженеров
```
select count(roles_employee.role_id)
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
where role_name like ('%QA%')
 ```
#### 26. Вывести количество Middle специалистов.
```
select count(roles_employee.role_id)
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
where role_name like ('%Middle%')
```
#### 27. Вывести количество разработчиков
```
select count(roles_employee.role_id)
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
where role_name like ('%developer%')
```
 #### 28. Вывести фонд (сумму) зарплаты разработчиков.
 ```
 select sum(salary.monthly_salary)
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where role_name like ('%developer%')
 ```
 #### 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 ```
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 order by salary.monthly_salary asc;
```
 #### 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 ```
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary between 1700 and 2300
 order by salary.monthly_salary asc;
 ```
 #### 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 ```
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary < 2300
 order by salary.monthly_salary asc; 
```
 #### 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 ```
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary in (1100, 1500, 2000)
```



