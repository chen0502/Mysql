create table goods(id int(11)primary key auto_increment,type varchar(30)not null,name varchar(30)unique,price decimal(7,2)unsigned,num int(11)default 0,add_time datetime);

describe  goods;

alter table goods rename tb_goods;

alter table tb_goods modify id varchar(30);

alter table tb_goods change name g_name varchar(30);

alter table tb_goods add pirture varchar(255);

alter table tb_goods drop pirture;

alter table tb_goods modify id tinyint(4)after type;

alter table tb_goods engine=myisam;

describe tb_goods;

show create table tb_goods\g;

drop table tb_goods;