SELECT (
    Select distinct salary
    from employee
    order by salary DESC 
    limit 1 offset 1
)
as secondHighestSalary;