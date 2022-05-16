use INVOICE;
select name from customer where cust_id in(select cust_id from INVOICE_MASTER where inv_date='2018-02-03');
select pname,price from product where p_id in(select p_id from INVOICE_ITEM);
select pname from product where p_id in(select p_id from INVOICE_ITEM where quantity>3);
select pname from product where p_id not in(select p_id from INVOICE_ITEM);
select name from customer where cust_id in(select cust_id from INVOICE_MASTER where inv_id in(select inv_id from INVOICE_ITEM where P_id in(select p_id from product where pname='powder') and (select p_id from product where pname='pencil')));
select * from INVOICE_ITEM where inv_id in(select inv_id from INVOICE_MASTER where cust_id in(select cust_id from customer where name='abu'));
select distinct name from customer where cust_id in(select cust_id from INVOICE_MASTER where inv_id in(select inv_id from INVOICE_ITEM where quantity>=2));
select pname,quantity from product natural join INVOICE_ITEM;
select * from  INVOICE_MASTER natural join INVOICE_ITEM natural join product natural join customer where inv_date='2018-01-01';
select name,pname,inv_date from customer natural join product natural join INVOICE_MASTER natural join INVOICE_ITEM where pname='powder';
select * from customer left  join INVOICE_MASTER natural join INVOICE_ITEM natural join product on customer.cust_id=INVOICE_MASTER.cust_id;
create view customers as select name from customer natural join INVOICE_MASTER;
select * from customers;
create view INVOICE_PRODUCTS as select pname,quantity,inv_id,p_id as product_id from product natural join INVOICE_ITEM;
select * from INVOICE_PRODUCTS;
select cust_id as all_id from customer union select p_id from product;
select P_id,pname,price+5 from product;
select * from customer where ph_no is null and city='ekm';
select pname from product where p_id in(select p_id from INVOICE_ITEM where quantity=2);