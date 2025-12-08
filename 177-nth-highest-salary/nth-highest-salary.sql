CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
declare M int;
set M=N-1;

  RETURN (
      # Write your MySQL query statement below.
      
      SELECT distinct salary 
      from employee
      order by salary DESC 
      limit 1 offset M

  );
END