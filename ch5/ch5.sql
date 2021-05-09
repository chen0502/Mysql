//第九章
mysql -h localhost -u root -p

select 4+2,4-2,4*2,4/2,4%3;

select 6/0,9%0;

select name AS 员工姓名, money *12 as 年薪 from staff;

select 0=1,1=1,0.1=1,1='1','a'='a',(1+2)=(2+1),null=null,null<=>null;

select 1<>2,2!2,1.5<>1,'abc'<>'ab',(1+2)!=(1+1);

select 1<1,2>1,1.5<2,'a'<'aaa',(1+2)<=(1+2);

select 'abc'regexp'^a','abc'regexp'c$','abc'regexp'.bc','abc'regexp'[xy]';

select 'bcd'regexp'a*d','bcd'regexp'cc*d','bcd'regexp'c+d','bcd'regexp'b+d';

select 1 && 1,1 and 0,1 and null,0 and null;

select 1||1,1 or 0,0 or 0,1 or null,0 or null,null or null;

select 1 xor 1, 0 xor 0, 1 xor 0,1 xor null;

select 5&6,2&3&6;

select 5|6,2|3|6;

select 10^15,2^2;

select 1<<2,5<<1,2>>1,5>>1;

select~1,bin(~1);

select 1+2|3,1+(2|3);






//第十章


select abs(5),abs(-5),abs(-5.5);

select mod(6,4),mod(6,-4),mod(null,6),mod(6,0),mod(0,2.5);

select ceil(2.45),ceil(-2.45);

select floor(2.45),floor(-2.45);

select rand(),rand(),rand();

select round(100.144),round(100.568),round(100.144,2),round(100.568,2);

select truncate(1.42,1),truncate(1.58,1),round(1.58,1);

select length('abcdef'),length('字符长度');

select char_length('abcdef'),char_length('字符个数');

select concat('abcd','efg'),concat('abcd',null,'efg');

select concat_ws('_','ab','cd','ef'),concat('_','gh',null,'ij');

select insert('beijinglvyoushichang',13,8,'gonglue');

select replace('abcabc','abc','you');

select lower('aBcD'),upper('aBcD');

select left('beijinglvyougonglue',7),right('beijinglvyougonglue',7);

select substring('beijinglvyougonglue',8);

select lpad('abcdefg',5,'km'),lpad('abcdefg',10,'km');

select concat('ab','cd','ef')as str1,
concat('ab',ltrim('cd'),'ef')as str2,
concat('ab','cd','ef')as str3,
concat('ab',rtrim('cd'),'ef')as str4;

select concat('ab','cd','ef')as str1,
concat('ab',trim('cd'),'ef')as str2,
trim('a'from'aabacaa')as str3;

select repeat('abc',3);

select locate('abc','ababcabd'),locate('efg','ababcabd');

select reverse('abcdefg');

select curdate();

select curtime();

select now();

select now(),unix_timestamp(now());

select year('07-01-15'),year(now());

select month('07-01-15'),month(now()),
week('07-01-15'),week(now());

select hour('07-01-15 05:16:21')as hour,
minute('07-01-15 05:16:21')as miunte,
second('07-01-15 05:16:21')as second;

select date_format('2018-01-05 14:30:30','%y%M%D%r');

select adddate('2009-01-01',interval 2 year)as date1,
adddate('2009-01-01 06:20:20',interval 2 hour)as date2,
adddate('2009-01-01 06:20:20',interval '10:10' minute_second)as date3;

select subdate('2009-01-01',interval 2 year)as date1,
subdate('2009-01-01 06:20:20',interval 7 hour)as date2;

select datediff('2022-02-04',now());

select time_to_sec('05:30:30'),sec_to_time(19830);

use staff;

select name,money,if(money>10000,'high','low')from staff;

select ifnull(money,0) from staff;

select case when money>10000 then 'hight' else 'low' end from staff;

select case money when 20000 then 'hight' when 15000 then 'mid' else 'low' end from staff;

select json_array(1,"abc",null,true,curtime());

select json_object("id",8,'name','Tom');

set @j='["a",["b","c"],"d"]';

select json_array_append(@j,'$[1]',1);

set @j='{"a":1,"b":[2,3]}';

select json_set(@j,'$.a',10,'$.c','[true,false]');

set @j='["a",["b","c"],"d"]',@h='{"a":1,"b":[2,3]}';

select json_remove(@j,'$[1]'),json_remove(@h,'$.a');

set @j='["a",["b","c"],"d"]';

select json_extract(@j,'$[1]');

set @j='["a",["b","c"],"d"]';

select json_search(@j,'one','d');

select database(),version(),user();

select md5('1'),md5('abc');

select password('123456');

select conv(15,10,2),conv('a',16,10),conv(1111,2,8);

select inet_aton('192.168.220.110');

select inet_ntoa('3232291950');

use db_shop;

select name,price,round(price) from goods;

select name,add_time,month(add_time)from goods;

select concat_ws('--',name,type)from goods;

select type,avg(price) from goods group by type;











