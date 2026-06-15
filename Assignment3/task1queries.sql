use superstore;

create table customers as select distinct `Customer ID` as customer_id,`Customer Name` as customer_name,Segment,Country,City,State,Region
from superstoreraw;
create table products as select distinct `Product ID` as product_id,`Product Name` as product_name,Category,`Sub-Category` as sub_category
from superstoreraw;
create table orders as
select `Row ID` as row_id,`Order ID` as order_id,`Order Date` as order_date,
`Ship Date` as ship_date,`Customer ID` as customer_id,`Product ID` as product_id,Sales,Quantity,Discount,Profit
from superstoreraw;
select * from orders where sales>(select avg(sales) from orders) limit 10;
select * from orders a where sales=(select max(sales) from orders b where a.customer_id=b.customer_id);
with csales as (select customer_id,sum(sales) as totalsales from orders group by customer_id)
select * from csales order by totalsales desc;

select customer_id,sales,row_number() over(partition by customer_id order by sales desc) rowno from orders;
select customer_id,sum(sales),rank() over(order by sum(sales) desc) as rankno from orders group by customer_id;

with csales as (select c.customer_id,c.customer_name,sum(o.sales) totalsales from customers c
 join orders o on c.customer_id=o.customer_id group by customer_id,customer_name)
select customer_id,customer_name,totalsales,rank() over(order by totalsales desc) crank from csales;

with csales as (select c.customer_id,sum(o.sales) totalsales from customers c join orders o on c.customer_id=o.customer_id group by c.customer_id)
select * from csales order by totalsales desc limit 10;

with csales as (select c.customer_id,sum(o.sales) totalsales from customers c join orders o on c.customer_id=o.customer_id group by c.customer_id)
select * from csales order by totalsales limit 10;

select customer_id,count(distinct order_id) torders from orders

group by customer_id having count(distinct order_id)=1;
select c.customer_name,sum(o.profit) profit from customers c
join orders o on c.customer_id=o.customer_id group by c.customer_name
order by sum(o.profit) desc limit 10;