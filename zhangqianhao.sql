4．	更新customer表的salary属性，将salary低于5000的客户的salary变为原来的2倍. 
update customer set salary=salary*2 where salary<5000;

5．	对deposite表进行统计，按银行统计存款总数，显示为b_id,total.
select  b_id,sum(amount) from deposite GROUP BY b_id;

6．	对deposite、customer、bank进行查询，查询条件为location在广州、苏州、济南的客户，存款在300000至500000之间的存款记录，显示客户姓名name、银行名称bank_name、存款金额amount. 
SELECT c.`name`,b.bank_name,d.amount from deposite d,customer c,bank b where d.b_id=b.b_id and d.c_id=c.c_id and c.location in ('广州','苏州','济南') and d.amount BETWEEN 300000 and 500000 ;

(1)	在bank中插入一条新记录B0005,交通银行；
INSERT into bank VALUES(6,'交通银行');

(2)	查询今天到期的存款信息
select * from deposite WHERE dep_date='2009-08-01';

(4)	查询前3名的存款信息
SELECT * FROM deposite ORDER BY amount DESC LIMIT 0,3;

(5)	查询孙杨在中国银行的存款信息
SELECT c.`name`,d.amount from deposite d,bank b, customer c where d.c_id=c.c_id and d.b_id=b.b_id AND c.`name` in('孙杨') and b.bank_name in('中国银行');

(6)	查询存款日期在2004年之后的农业银行的存款信息，并按降序排列
SELECT * from deposite d,bank b where d.b_id=b.b_id and d.dep_date>'2004-1-1' and b.bank_name='农业银行' ORDER BY d.amount DESC ;
 