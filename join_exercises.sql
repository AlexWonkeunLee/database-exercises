Use employees;
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_manager AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE e.gender = 'F' AND de.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT title AS Title, COUNT(t.emp_no) AS Count
FROM employees AS e
JOIN titles AS t ON t.emp_no = e.emp_no
JOIN dept_emp AS de ON de.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01' AND de.dept_no = 'd009'
GROUP BY title;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary AS Salary
FROM employees AS e
JOIN salaries AS s ON s.emp_no = e.emp_no
JOIN dept_manager AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name;

