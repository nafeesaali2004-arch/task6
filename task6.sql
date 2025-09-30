drop table sales;create table sales(
transaction_id int,
date Date,
product_category varchar(500),
product_name varchar(500),
units_sold int,
unit_price float,
total_revenue float,
region varchar(500),
payment_method varchar(500)
)
select* from sales;
select product_name,
extract(month from date)as order_month,
extract(year from date) as order_year
from sales
group by product_name,
extract(month from date),
extract(year from date) ;


select sum(total_revenue) as totalsales from sales;



select count(*) as total_books_sold from sales 
where product_category like'%Books%';

select product_name,extract(month from date) from sales
order by date desc
limit 5;

