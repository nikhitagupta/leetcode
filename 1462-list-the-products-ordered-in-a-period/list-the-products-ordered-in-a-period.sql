# Write your MySQL query statement below
select p.product_name , SUM(o.unit) AS unit 
from products p
JOIN orders o
on o.product_id=p.product_id
where o.order_date between '2020-02-01' and '2020-02-29'
group by p.product_name, p.product_id
having sum(o.unit)>=100;