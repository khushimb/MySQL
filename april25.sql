CREATE DATABASE company_management;
USE company_management;


CREATE TABLE employees (emp_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), email VARCHAR(100), phone_number VARCHAR(20), hire_date DATE, job_id VARCHAR(10), salary DECIMAL(10,2), department_id INT, status VARCHAR(20));
CREATE TABLE departments (dept_id INT PRIMARY KEY, dept_name VARCHAR(100), manager_id INT, location_id INT, phone VARCHAR(20), email VARCHAR(100), budget DECIMAL(10,2), start_date DATE, end_date DATE, is_active BOOLEAN);
CREATE TABLE projects (project_id INT PRIMARY KEY, project_name VARCHAR(100), start_date DATE, end_date DATE, budget DECIMAL(10,2), client_name VARCHAR(100), team_lead_id INT, status VARCHAR(20), description TEXT, priority INT);
CREATE TABLE clients (client_id INT PRIMARY KEY, client_name VARCHAR(100), contact_name VARCHAR(100), contact_email VARCHAR(100), contact_phone VARCHAR(20), address TEXT, city VARCHAR(50), state VARCHAR(50), zip_code VARCHAR(10), country VARCHAR(50));
CREATE TABLE tasks (task_id INT PRIMARY KEY, task_name VARCHAR(100), assigned_to INT, project_id INT, start_date DATE, end_date DATE, status VARCHAR(20), priority INT, description TEXT, is_completed BOOLEAN);

ALTER TABLE employees ADD COLUMN middle_name VARCHAR(50), ADD COLUMN birth_date DATE, ADD COLUMN gender VARCHAR(10), ADD COLUMN nationality VARCHAR(50);
ALTER TABLE departments ADD COLUMN description TEXT, ADD COLUMN created_by INT, ADD COLUMN modified_date DATE, ADD COLUMN num_employees INT;
ALTER TABLE projects ADD COLUMN tech_stack TEXT, ADD COLUMN client_email VARCHAR(100), ADD COLUMN last_updated DATE, ADD COLUMN estimated_hours INT;
ALTER TABLE clients ADD COLUMN industry VARCHAR(100), ADD COLUMN website VARCHAR(100), ADD COLUMN registration_number VARCHAR(50), ADD COLUMN account_manager_id INT;
ALTER TABLE tasks ADD COLUMN estimated_hours INT, ADD COLUMN actual_hours INT, ADD COLUMN created_by INT, ADD COLUMN last_modified DATE;

ALTER TABLE employees DROP COLUMN status;
ALTER TABLE departments DROP COLUMN is_active;
ALTER TABLE projects DROP COLUMN priority;
ALTER TABLE clients DROP COLUMN zip_code;
ALTER TABLE tasks DROP COLUMN is_completed;

ALTER TABLE employees RENAME COLUMN first_name TO fname;
ALTER TABLE employees RENAME COLUMN last_name TO lname;
ALTER TABLE employees RENAME COLUMN phone_number TO contact_number;
ALTER TABLE employees RENAME COLUMN hire_date TO joining_date;

ALTER TABLE departments RENAME COLUMN dept_name TO name;
ALTER TABLE departments RENAME COLUMN location_id TO loc_id;
ALTER TABLE departments RENAME COLUMN phone TO contact;
ALTER TABLE departments RENAME COLUMN email TO dept_email;

ALTER TABLE projects RENAME COLUMN project_name TO name;
ALTER TABLE projects RENAME COLUMN client_name TO customer;
ALTER TABLE projects RENAME COLUMN team_lead_id TO lead_id;
ALTER TABLE projects RENAME COLUMN description TO details;

ALTER TABLE clients RENAME COLUMN client_name TO name;
ALTER TABLE clients RENAME COLUMN contact_name TO primary_contact;
ALTER TABLE clients RENAME COLUMN contact_email TO email;
ALTER TABLE clients RENAME COLUMN contact_phone TO phone;

ALTER TABLE tasks RENAME COLUMN task_name TO name;
ALTER TABLE tasks RENAME COLUMN assigned_to TO assignee_id;
ALTER TABLE tasks RENAME COLUMN description TO details;
ALTER TABLE tasks RENAME COLUMN status TO current_status;

ALTER TABLE employees MODIFY fname VARCHAR(100);
ALTER TABLE employees MODIFY lname VARCHAR(100);
ALTER TABLE employees MODIFY email VARCHAR(150);
ALTER TABLE employees MODIFY nationality VARCHAR(100);

ALTER TABLE departments MODIFY name VARCHAR(150);
ALTER TABLE departments MODIFY budget DECIMAL(15,2);
ALTER TABLE departments MODIFY contact VARCHAR(30);
ALTER TABLE departments MODIFY dept_email VARCHAR(150);

ALTER TABLE projects MODIFY name VARCHAR(150);
ALTER TABLE projects MODIFY budget DECIMAL(15,2);
ALTER TABLE projects MODIFY customer VARCHAR(120);
ALTER TABLE projects MODIFY tech_stack TEXT;

ALTER TABLE clients MODIFY name VARCHAR(150);
ALTER TABLE clients MODIFY email VARCHAR(150);
ALTER TABLE clients MODIFY phone VARCHAR(25);
ALTER TABLE clients MODIFY address VARCHAR(255);

ALTER TABLE tasks MODIFY name VARCHAR(150);
ALTER TABLE tasks MODIFY estimated_hours DECIMAL(5,2);
ALTER TABLE tasks MODIFY actual_hours DECIMAL(5,2);

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM projects;
SELECT * FROM clients;
SELECT * FROM tasks;


