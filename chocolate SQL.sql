select*
from geo;

select*
from people;

select*
from products;

select*
from sales;

select*
from sales
where GeoID = 'G4';

select*
from sales
where GeoID = 'G4'
and amount > 5000;

select*
from geo;

select*
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select*
from products;

select*
from people;

delete from people
where team = '';

select*
from people;

delete from people
where SPID is null;

select*
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select count(SPID)
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select*,
row_number() over(
partition by SPID) as row_num
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select*,
row_number() over(
partition by PID) as row_num
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select sum(amount)
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select sum(Customers)
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select sum(Boxes)
from sales s
join geo g on g.GeoID = s.GeoID
where g.geo = 'Canada';

select*
from sales s
join geo g on g.GeoID = s.GeoID
;

select*
from sales s
join geo g on g.GeoID = s.GeoID
where Amount is null and SPID is null and g.GeoID is null and PID is null and SaleDate is null and customers is null and boxes is null and Geo is null and Region is null;

select*
from sales s
join geo g on g.GeoID = s.GeoID
where Amount = '' and SPID = '' and g.GeoID = '' and PID = '' and SaleDate = '' and customers = '' and boxes = '' and Geo = '' and Region = '';

select*
from sales s
join geo g on g.GeoID = s.GeoID
;

select count(SPID)
from sales s
join geo g on g.GeoID = s.GeoID
;

select*
from sales s
join geo g on g.GeoID = s.GeoID
;

select*
from sales s
join geo g on g.GeoID = s.GeoID
where Region = 'APAC';

select round(avg(amount),2)
from sales s
join geo g on g.GeoID = s.GeoID
;

select round(sum(amount)/sum(boxes),2) as avg_amount_per_boxes
from sales s
join geo g on g.GeoID = s.GeoID
;

select round(sum(Customers)/sum(boxes),2) as avg_Customers_per_boxes
from sales s
join geo g on g.GeoID = s.GeoID
;

