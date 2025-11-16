


create table pizza_sales(pizza_id int, order_id int, pizza_name_id varchar(20), quantity int, order_date date,
order_time time, unit_price float, total_price float, pizza_size varchar(5), pizza_category varchar(20), 
pizza_ingredients varchar(100), pizza_name varchar(20))

select * from pizza_sales

SELECT * FROM pizza_sales LIMIT 100000;

select count(pizza_id) from pizza_sales

5.
select to_char(order_date, 'Day') as Order_Day, count(distinct order_id) as order_count from pizza_sales
group by to_char(order_date, 'Day')

6. 
select to_char(order_date, 'month') as order_month, count(distinct order_id) as order_count from pizza_sales
group by to_char(order_date, 'month')
order by count(distinct order_id) desc

select * from pizza_sales

7.
select pizza_category,sum(total_price), cast(cast(sum(total_price) * 100 as decimal(10,2)) / (select sum(total_price) 
from pizza_sales  where extract(month from order_date) = 1) as decimal(10,2)) as percentage_of_each_category from pizza_sales
where extract(month from order_date) = 1 
group by pizza_category
order by percentage_of_each_category desc

8.
select pizza_size,sum(total_price), cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) --where extract(QUARTER from order_date) = 1)
as decimal(10,2)) as percentage_of_each_size from pizza_sales
--where extract(QUARTER from order_date) = 1
group by pizza_size
order by percentage_of_each_size desc

--9. To get top-5
select * from pizza_sales
select pizza_name, cast(sum(total_price) as decimal(10,2)) as total_revenue_by_each_pizza from pizza_sales
group by pizza_name
order by total_revenue_by_each_pizza desc
limit 5;