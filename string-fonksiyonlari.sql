--String Fonksiyonalar�

--select LEN('Ali Kul Mtal') as [Karakter Say�s�]

--select name,len(name) as [Karakter Say�s�] from products
--select left(name,3) from products
--select concat(left(name,3),'...') as Name from products
--select CONCAT('Ali','Kul')
--select name,lower(name) [�r�n Ad�] from products
--select name,upper(name) [�r�n Ad�] from products
--select name,rtrim(ltrim(name)) [�r�n Ad�] from products
select name,REPLACE(name,' ','-') as [�r�n Ad�] from products