-- SQL-команды для создания таблиц
create table employees
(
	employee_id int primary key,
		first_name varchar(100) not null,
		last_name varchar(100) not null,
		title varchar(100) not null,
		brith_date date not null,
		notes text
);

select * from employees;

create table customers
(
	customer_id varchar (100) primary key,
		company_name text not null,
		contract_name varchar(100) not null
);

select * from customers;

create table orders
(
	order_id int primary key,
		customer_id varchar(100) references customers(customer_id),
		employee_id int references employees(employee_id),
		order_data date not null,
		ship_city varchar(100) not null
);

select * from orders;