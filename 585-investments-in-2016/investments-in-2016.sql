SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
from insurance
where 
tiv_2015 IN(
    select tiv_2015
    from insurance 
    group by tiv_2015
    having count(*)>1
)
AND(lat,lon) IN(
    select lat,lon 
    from insurance
    group by lat,lon
    having count(*)=1
)