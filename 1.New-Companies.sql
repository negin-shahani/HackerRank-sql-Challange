SELECT company.company_code, company.founder,
COUNT(distinct Lead_Manager.lead_manager_code), 
COUNT(distinct Senior_Manager.Senior_Manager_code), 
COUNT(distinct Manager.manager_code), 
COUNT(distinct Employee.employee_code)
FROM company,Lead_Manager,Senior_Manager,Manager,Employee
where company.company_code = Lead_Manager.company_code
And Lead_Manager.lead_manager_code = Senior_Manager.lead_manager_code
And Senior_Manager.Senior_Manager_code = Manager.Senior_Manager_code
And Manager.manager_code = Employee.manager_code
Group By company.company_code, company.founder
ORDER BY company_code ASC;
