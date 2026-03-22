select * 
from sales
where quantity=2
---------------------------------------------------------------------------------------------------------------------------------------
select * 
from customers
where gender='female' and city='giza'
---------------------------------------------------------------------------------------------------------------------------------------
select *
from products
where product_name='basic dress' and category='dress'
order by price
---------------------------------------------------------------------------------------------------------------------------------------
select *
from stock
where quantity_in_stock > 50
order by quantity_in_stock desc
---------------------------------------------------------------------------------------------------------------------------------------
select *
from sales
where sale_date between '2024-01-31' and '2025-08-31'
---------------------------------------------------------------------------------------------------------------------------------------
select *
from sales
where sale_date >'2024-09-30' and total_price >=800
order by total_price
---------------------------------------------------------------------------------------------------------------------------------------
select *
from stock
where branch in ('cairo','alexandria')
order by quantity_in_stock desc
---------------------------------------------------------------------------------------------------------------------------------------
select *
from stock
where branch not in ('tanta')
order by quantity_in_stock
---------------------------------------------------------------------------------------------------------------------------------------
select st.branch,p.product_name,p.category,p.color,p.price
from [stock] st
inner join [products] p on st.product_id=p.product_id
---------------------------------------------------------------------------------------------------------------------------------------
select s.quantity,s.discount,s.total_price,c.full_name,c.city,c.age
from [sales] s
inner join customers c on s.customer_id=c.customer_id
---------------------------------------------------------------------------------------------------------------------------------------
select s.sale_date,s.quantity,s.total_price,c.full_name,c.city,p.product_name,p.category
from sales s
inner join customers c on s.customer_id=c.customer_id
inner join products p on s.product_id=p.product_id
---------------------------------------------------------------------------------------------------------------------------------------
select c.full_name,c.city,p.product_name,p.category,p.color,s.sale_date,s.quantity,s.total_price,st.branch
from sales s
inner join customers c on c.customer_id=s.customer_id
inner join products p on p.product_id=s.product_id
inner join stock st on st.product_id=s.product_id
order by s.sale_date
---------------------------------------------------------------------------------------------------------------------------------------
