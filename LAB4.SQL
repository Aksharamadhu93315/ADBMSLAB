use INVOICE;
select pname,price from product where pname!='soap';
select min(price),max(price),avg(price) from product;
select city,count(city) as count from customer group by city having count(city);
select city,count(city) as count from customer group by city having count(city)>3;
select concat(name,'lives in' ,city) as 'who , where' from customer;