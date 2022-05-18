--Gruplama

--select distinct category from products

--select category,count(*) from products group by category
--select category,sum(price*stock) as Toplam from products group by category
--select category,avg(price) as Ortalama from products group by category

select category,count(*) from products group by category having count(*)>3