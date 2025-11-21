# Write your MySQL query statement below
select p.product_name , SUM(o.unit) AS unit 
from products p
JOIN orders o
on o.product_id = p.product_id
where o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
group by p.product_name 
having sum(o.unit)>=100