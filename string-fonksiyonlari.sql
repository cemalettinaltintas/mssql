--String Fonksiyonalarý

--select LEN('Ali Kul Mtal') as [Karakter Sayýsý]

--select name,len(name) as [Karakter Sayýsý] from products
--select left(name,3) from products
--select concat(left(name,3),'...') as Name from products
--select CONCAT('Ali','Kul')
--select name,lower(name) [Ürün Adý] from products
--select name,upper(name) [Ürün Adý] from products
--select name,rtrim(ltrim(name)) [Ürün Adý] from products
select name,REPLACE(name,' ','-') as [Ürün Adý] from products