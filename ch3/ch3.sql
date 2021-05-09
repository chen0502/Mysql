show variables like'character_set_database';

alter table goods convert to character set utf8;



create database db_shop;

use db_shop;

create table goods(
id int(11)primary key auto_increment,
type varchar(30)not null,
name varchar(30)unique,
price decimal(7,2)unsigned,
num int(11)default 0,
add_time datetime)
default character set = utf8;

insert into goods(id,type,name,price,num,add_time)values(1,'�鼮','���μ�',50.4,20,'2018-01-01 13:40:40');

select*from goods;

insert into goods values(2,'����','ţ����',7.5,200,'2018-01-01 13:40:40');

select*from goods;

insert into goods(type,name,price)values('����','ˮ����',2.5);

select*from goods;

insert into goods(id,type,name,price,num,add_time)values
(4,'����','��������',800,null,'2016-04-04 13:40:40'),
(5,'��Ʒ','��֭',3,70,'2016-05-05 13:40:40'),
(6,'�鼮','����',109,50,'2016-06-06 13:40:40');

select*from goods;

create table new_goods(
id int(11)primary key auto_increment,
type varchar(30)not null,
name varchar(30)unique,
price decimal(7,2)unsigned,
num int(11)default 0,
add_time datetime)
default character set = utf8;

insert into new_goods(id,type,name,price,num,add_time)select id,type,name,price,num,add_time from goods;

create table test_godos(
g_id int(11)primary key auto_increment,
g_name varchar(30)unique,
g_price decimal(7,2)unsigned)
default character set = utf8;

insert into test_godos(g_id,g_name,g_price)select id,name,price from goods;

update goods set num=0;

update goods set num=10 where type='�鼮';

delete from new_goods;

delete from goods where id>5;

select*from goods;

select name from goods;

select id,name from goods;

select * from goods where id=3;

select * from goods where type='����';

select * from goods where num>=10;

select * from goods where price>50 and id>3;

select * from goods where type='����' or type='�鼮';

select * from goods where id in(1,3);

select * from goods where id  not in(1,3);

select * from goods where num is not null;

select * from goods where num <>10;

select type from goods;

select distinct type from goods;

select name,price from goods where price between 2.5 and 50;

select name,price from goods where price not between 2.5 and 50;

select *from goods where name like'��%';

select *from goods where name like'��__';

select id,name,add_time from goods order by add_time;

select * from goods order by price,num;

select * from goods order by price desc;

select * from goods order by price desc,num;

select * from goods limit 3;

select * from goods limit 2,3;

insert into goods(id,type,name,price,num,add_time)values
(6,'�鼮','����',109,50,'2016-06-06 13:40:40'),
(7,'ˮ��','����',1.5,null,'2018-02-15 13:30:40'),
(8,'ˮ��','ƻ��',3,100,'2018-03-15 13:30:50'),
(9,'����','ţ�п�',120,10,'2018-05-04 13:40:40'),
(10,'�鼮','��¥��',50.5,15,'2018-03-06 13:40:40');

select count(*)as goods_num from goods;

select count(num)as goods_num from goods;

select sum(num) goods_num from goods;

select type,avg(price) from goods group by type;

select max(price) maxpri,min(price) minpri from goods;

select type,count(*) from goods group by type;

select type,group_concat(name) from goods group by type;

select type,count(*) from goods group by type having count(*)>1;

select type,num,group_concat(name),count(name) from goods group by type,num;



































