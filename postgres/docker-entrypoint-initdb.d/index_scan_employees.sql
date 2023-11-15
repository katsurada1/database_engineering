create index employees_name on employees(name);
explain analyze select id, name from employees where name = 'Zs';

