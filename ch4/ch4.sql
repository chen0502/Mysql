//����staff���ݿ�
create database staff;

//ѡ�����ݿ�
use staff;

//����staff��
create table staff(
staff_id int(10) unsigned not null auto_increment,
section_id int(10) unsigned not null,
positions_id int(10) not null,
name varchar(10) not null,
sex enum('��','Ů')not null,
phone_number char(11)not null,
money decimal(10,2)unsigned not null default'0.00',
entry_date datetime not null,
primary key(staff_id))
default character set = utf8;

//��staff��������
insert into staff(staff_id,section_id,positions_id,name,sex,phone_number,money,entry_date)
values
(1,'1','1','����ʤ','��','13753697300',20000,'2018-04-02 14:35:52'),
(2,'1','2','��ϼ','Ů','13753697301',10000,'2018-04-03 14:38:52'),
(3,'2','3','������','Ů','13753697302',15000,'2018-04-04 14:45:52'),
(4,'3','3','������','��','13753697303',15000,'2018-04-04 14:55:52'),
(5,'4','3','������','��','13753697304',15000,'2018-04-04 14:55:55'),
(6,'4','8','����','��','13753697305',10000,'2018-04-05 14:15:22');

//����section��
create table section(
section_id int(10) unsigned not null auto_increment,
section_title varchar(20)not null,
primary key(section_id))
default character set =utf8;

//��������
insert into section(section_id,section_title)
values
(1,'�ܾ���'),
(2,'����'),
(3,'���۲�'),
(4,'�з���'),
(5,'��Ӫ��'),
(6,'������Դ��'),
(7,'�ۺ����');

//��ͨ�����Ӳ�ѯ
select staff_id,name,sex,section_title,phone_number 
from staff inner join section 
on staff.section_id=section.section_id;

//��ͨ�����Ӳ�ѯ
select staff_id,name,sex,section_title,phone_number from staff,section
where staff.section_id=section.section_id;

//�����Ӳ�ѯ
select s1.staff_id,s1.name,s2.money from staff as s1
inner join staff as s2 on s1.staff_id=s2.staff_id and s2.money<15000;

//�������ݿ�Ϊdb_shop
use db_shop;

//�ر�orders������Լ��
set foreign_key_checks=0;

//����orders��
create table orders(
o_id int(11)primary key,
add_time datetime,
goods_id int(11))
default character set =utf8;

//���orders��������
insert into orders(o_id,add_time,goods_id)
values
(1,'2018-04-01 14:35:52',6),
(2,'2018-04-02 14:45:52',1),
(3,'2018-04-02 14:55:52',5),
(4,'2018-04-02 15:35:52',1),
(5,'2018-04-02 16:35:52',15),
(6,'2018-04-02 14:35:52',4);

//�����Ӳ�ѯ
select goods.id,goods.name,orders.o_id from goods
left join orders on goods.id=orders.goods_id;

//�����Ӳ�ѯ
select orders.o_id,orders.add_time,goods.name from goods
right join orders on orders.goods_id=goods.id;

//�������ݿ�Ϊstaff
use staff;

//�����������Ӳ�ѯ
select staff_id,name,sex,section_title,phone_number
from staff inner join section
on staff.section_id=section.section_id
where section.section_title='�ܾ���';

//�������ݿ�Ϊdb_shop
use db_shop;

//��ѯ������
select goods.id,goods.name,orders.o_id from goods
left join orders on goods.id=orders.goods_id order by goods.id;

//from����Ӳ�ѯ

select*from goods where id>3;

select id,name from (select*from goods where id>3) as g1
where num >10;

//where����Ӳ�ѯ

select goods_id from orders;

select*from goods where id in (select goods_id from orders);

select*from goods where id not in (select goods_id from orders);

select goods_id from orders where add_time>'2018-04-02';

select*from goods
where id=any(select goods_id from orders where add_time>'2018-04-02');

//all

select goods_id from orders where add_time<'2018-04-02';

select*from goods
where id> all(select goods_id from orders where add_time<'2018-04-02');

//exists

select*from goods where id<'5' and
exists(select o_id from orders where goods_id='5');

//�����жϷ�
select*from goods
where id=(select goods_id from orders where o_id=3);

//�ϲ���ѯ

create database school;

use school;

create table music(
id int(10) unsigned not null auto_increment,
name varchar(20) not null ,
primary key(id)
)
default character set=utf8;

create table dance(
id int(10) unsigned not null auto_increment,
name varchar(20) not null ,
primary key(id)
)
default character set=utf8;

insert into music (id,name)
values
(1,'����'),
(2,'����'),
(3,'����');

insert into dance (id,name)
values
(1,'����'),
(2,'����'),
(3,'���');

select*from music union select*from dance;

select*from music union all select*from dance;

























































