-- requête 1 Sélectionner le nom, prénom et salaire de tous les employés triés par date d’embauche de la plus ancienne à la plus 
-- récente.
SELECT emp_lastname,emp_firstname,emp_salary,emp_hiredate 
FROM employees 
ORDER BY employees.emp_hiredate; 


-- requête 2 Sélectionner le nom, salaire, date d’embauche de tous les employés triés par identifiant de manager (croissant) puis par 
-- nom (ordre alphabétique).
SELECT emp_lastname,emp_firstname,emp_hiredate FROM employees ORDER BY emp_manager_id ASC, emp_lastname ASC;

-- requête 3 Sélectionner le nom, prénom, salaire, date d’embauche, nom et prénom du manager de tous les employés. Trier la liste par 
-- nom de manager (ordre croissant) puis par date d’embauche de la plus récente à la plus ancienne
SELECT employees.emp_lastname,employees.emp_firstname,employees.emp_salary,employees.emp_hiredate
,managers.emp_lastname,managers.emp_firstname
FROM employees 
INNER JOIN employees AS managers ON employees.emp_manager_id = managers.emp_id
ORDER BY managers.emp_lastname ASC, employees.emp_hiredate DESC;

-- requête 4 Sélectionner les employés sans manager.
SELECT * FROM employees WHERE emp_manager_id IS NULL;

-- requête 5 Sélectionner le prénom et nom de tous les managers avec, pour chacun, le nombre de leur subordonnés. Les managers 
-- avec le moins de subordonnés apparaissent en 1er
SELECT managers.emp_lastname,managers.emp_firstname,count(employees.emp_manager_id) AS nb_sub
FROM employees
INNER JOIN employees AS managers ON employees.emp_manager_id = managers.emp_id
GROUP BY managers.emp_lastname,managers.emp_firstname
ORDER BY nb_sub;

-- requête 6 Sélectionner le nom de tous les managers avec, pour chacun, la moyenne des salaires de leur subordonnés. Trier le résultat 
-- selon la valeur de la moyenne par ordre décroissant
SELECT managers.emp_lastname,managers.emp_firstname,AVG(employees.emp_salary) AS avg_sub_salary
FROM employees
INNER JOIN employees AS managers ON employees.emp_manager_id = managers.emp_id
GROUP BY managers.emp_lastname,managers.emp_firstname
ORDER BY avg_sub_salary DESC;

-- requête 7
SELECT director.emp_id,director.emp_lastname,director.emp_firstname,director.emp_salary,director.emp_hiredate,COUNT(employees.*) AS number_of_emplyees,SUM(employees.emp_salary)as total_salary,AVG(employees.emp_salary) AS avg_sub_salary
FROM employees as director
INNER JOIN employees ON employees.emp_id <> director.emp_id
WHERE director.emp_manager_id IS NULL
GROUP BY director.emp_id;

