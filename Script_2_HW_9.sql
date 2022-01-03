select * from employees;
select * from salary;

--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary S
left join employee_salary ES on S.id = ES.salary_id
where ES.employee_id is null 
order by S.monthly_salary;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary S
left join employee_salary ES on S.id = ES.salary_id
where ES.employee_id is null and S.monthly_salary < 2000
order by S.monthly_salary;

-- 5. Найти всех работников кому не начислена ЗП.
select E.employee_name from employees E
left join employee_salary ES on E.id = ES.employee_id
where ES.id is null;

--6. Вывести всех работников с названиями их должности.
select * from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id ;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Python developer%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Manual QA engineer%';

--11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id 
where role_name like '%Automation QA engineer%';

--12. Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select  role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';

--16. Вывести зарплаты Python разработчиков
select  role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%';

-- 20. Вывести зарплаты Junior QA инженеров
select  role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%' and role_name like '%Junior%' ;


-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';


--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select  MIN(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 24. Вывести максимальную ЗП QA инженеров
select  max(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 25. Вывести количество QA инженеров
select  count(role_name) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--26. Вывести количество Middle специалистов.
select  count(role_name) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select  count(role_name) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select  role_name, sum(monthly_salary) from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%'
group by role_name;

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles.id = roles_employee.role_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;