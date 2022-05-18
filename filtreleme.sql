--select id,name,price from products where price>=3000 and price<=4000

--select id,name,price from products where price>=3000 or price<=4000

--select id,name,price from products where id=1 or id=2

--select name,price from products where name='IPhone X'
--select name,price from products where name!='IPhone X'
--select name,price from products where NOT name='IPhone X'
select * from products where name='Samsung S4' and price=3250