SELECT MAX(salary* months), COUNT(*)
FROM Employee
WHERE salary* months = (
    select max(months * salary) from Employee
);
