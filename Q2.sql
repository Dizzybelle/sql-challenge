SELECT first_name, last_name, dire_date 
FROM employees
WHERE dire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY dire_date