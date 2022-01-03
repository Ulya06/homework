select * from employees;
select * from salary;

--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id
where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from salary S
left join employee_salary ES on S.id = ES.salary_id
where ES.employee_id is null 
order by S.monthly_salary;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from salary S
left join employee_salary ES on S.id = ES.salary_id
where ES.employee_id is null and S.monthly_salary < 2000
order by S.monthly_salary;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select E.employee_name from employees E
left join employee_salary ES on E.id = ES.employee_id
where ES.id is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select * from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id ;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%QA engineer%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Manual QA engineer%';

--11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Automation QA engineer%';

--12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select  role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';

--16. ������� �������� Python �������������
select  role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%';

--17. ������� ����� � �������� Junior Python �������������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript%';

--19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%';

-- 20. ������� �������� Junior QA ���������
select  role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' and role_name like '%Junior%' ;


-- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';


--22. ������� ����� ������� JS �������������
select sum(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%';

--23. ������� ����������� �� QA ���������
select  MIN(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 24. ������� ������������ �� QA ���������
select  max(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 25. ������� ���������� QA ���������
select  count(role_name) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--26. ������� ���������� Middle ������������.
select  count(role_name) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 27. ������� ���������� �������������
select  count(role_name) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
select  role_name, sum(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%'
group by role_name;

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
order by role_name;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;
