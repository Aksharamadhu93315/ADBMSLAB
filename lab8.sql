use INVOICE;
 delimiter //;
create trigger min_price
before insert
on product for each row
begin
if new.price<=5 then set new.price=10;
end if;
end//
delimiter ;//
select * from product;
insert into product values(107,'scale',2);