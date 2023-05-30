HM_3.Joins
1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.employee_name, salary.monthly_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id 

 2. ������� ���� ���������� � ������� �� ������ 2000.
 select employees.employee_name, salary.monthly_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id 
where monthly_salary < 2000

 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_salary.employee_id, employees.employee_name, salary.monthly_salary 
from salary left join employee_salary 
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id = employee_salary.employee_id
where employees.employee_name is NULL

 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_salary.employee_id, employees.employee_name, salary.monthly_salary 
from salary left join employee_salary 
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id = employee_salary.employee_id
where employees.employee_name is null and monthly_salary < 2000

 5. ����� ���� ���������� ���� �� ��������� ��.

 select employees.id, employees.employee_name, salary.monthly_salary 
 from employees left join employee_salary
 on employees.id = employee_salary.employee_id 
 left join salary
 on salary.monthly_salary = employee_salary.salary_id
 
 6. ������� ���� ���������� � ���������� �� ���������.
 
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 

7. ������� ����� � ��������� ������ Java �������������.

select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Java %'

8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Python%'

9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%'

 10. ������� ����� � ��������� ������ QA ���������.
 
 select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Manual QA%'
 
 11. ������� ����� � ��������� ��������������� QA
  select employees.employee_name, roles.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id 
join  roles
on roles.id = roles_employee.role_id 
where roles.role_name like '%Automatedl QA%'

 12. ������� ����� � �������� � ���� Junior ������������
 
select employees.employee_name, role_name, salary.monthly_salary 
from employees
join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like ('%Junior%'); 

 13. ������� ����� � �������� � ���� Middle ������������

 select employees.employee_name, salary.monthly_salary, roles.role_name 
 from employees
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Middle%'); 
 
14. ������� ����� � �������� � ���� Senior ������������
 select employees.employee_name, salary.monthly_salary, roles.role_name 
 from employees
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Senior%'); 

15. ������� �������� Java �������������

select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Java %'); 

16. ������� �������� Python �������������

select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
 where role_name like ('%Python%');

 17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Junior Python%');


 18. ������� ����� � �������� Middle JS �������������
 
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Middle JavaScript%');


 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Senior Java %');
 
 20. ������� �������� Junior QA ���������
 
select employees.employee_name, salary.monthly_salary, roles.role_name 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like ('Junior%QA');
 
21. ������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%Junior%')

 22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%JavaScript%')

23. ������� ����������� �� QA ���������
select min(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%QA%')

24. ������� ������������ �� QA ���������

select max(salary.monthly_salary)
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('%QA%')

 25. ������� ���������� QA ���������
select count(roles_employee.role_id)
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
where role_name like ('%QA%')
 
 26. ������� ���������� Middle ������������.
select count(roles_employee.role_id)
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
where role_name like ('%Middle%')

 27. ������� ���������� �������������
select count(roles_employee.role_id)
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
where role_name like ('%developer%')

 28. ������� ���� (�����) �������� �������������.
 select sum(salary.monthly_salary)
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where role_name like ('%developer%')
 
 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 order by salary.monthly_salary asc;

 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary between 1700 and 2300
 order by salary.monthly_salary asc;
 
 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary < 2300
 order by salary.monthly_salary asc; 

 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary 
 from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary in (1100, 1500, 2000)