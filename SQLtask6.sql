select * from customer

select * from product

select * from sales

select customer_id,order_id,ship_mode from sales
select customer_id,segment,customer_name ,age from customer

--INNER JOIN
	
select c.customer_id,c.customer_name,c.age,
s.order_id,s.customer_id,s.ship_mode
from customer as c
inner join sales as s on s.customer_id = c.customer_id limit 20

--LEFT JOIN

select c.customer_id,c.customer_name,c.age,
s.order_id,s.customer_id,s.ship_mode
from sales as s
left join customer as c on c.customer_id = s.customer_id limit 20

--RIGHT JOIN

select c.customer_id,c.customer_name,c.age,
s.order_id,s.customer_id,s.ship_mode
from sales as s
right join customer as c on c.customer_id = s.customer_id limit 20

--FULL JOIN

select c.customer_id,c.customer_name,c.age,
s.order_id,s.customer_id,s.ship_mode
from sales as s
full join customer as c on c.customer_id = s.customer_id limit 20

select*from sales
select* from customer

select s.order_id,s.order_line,s.ship_mode,s.discount,
c.customer_id,c.segment,c.country,c.city,c.region from customer as c
left join sales as s on s.product_id = c.customer_id limit 10


select s.order_id,s.order_line,s.ship_mode,s.discount,
c.customer_id,c.segment,c.country,c.city,c.region from customer as c
right join sales as s on s.product_id = c.customer_id limit 10


select s.order_id,s.order_line,s.ship_mode,s.discount,
c.customer_id,c.segment,c.country,c.city,c.region from customer as c
full join sales as s on s.product_id = c.customer_id limit 10

----JOIN 3 TABLES AT SAME TIME

select c.age,c.customer_id,c.customer_name,
s.ship_mode,s.quantity,s.product_id,s.order_id,
p.product_name from customer as c
join sales as s
on s.customer_id = c.customer_id join product as p
on p.product_id = s.product_id





