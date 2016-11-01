create database if not exists library;

use library;

drop database library;


/*用户信息表*/

drop table Mem_Info;
create table if not exists Mem_Info
(
Mem_Id int not null,
Mem_password varchar(50) not null,
Mem_name varchar(50) not null,
Mem_address text not null,
Mem_phone bigint not null,
Mem_level varchar(50) not null,
primary key(Mem_Id)
);

insert into mem_info values('1','123','justin','QD University','15366958123','SVIP 20元');
insert into mem_info values('2','234','Saber','Railway Station','13623565789','VIP 10元');
insert into mem_info values('3','1234','jack','XinJiaZhuang','13826565785','VIP 10元');
insert into mem_info values('4','456','Emily','FuShan Apartment','15626565358','SVIP 20元');

select * from mem_info;


/*现有书籍表*/
drop table Book_Now_Info;
create table if not exists Book_Now_Info
(
 Book_Id int not null,
 Book_name varchar(50) not null,
 Book_Author varchar(50) not null,
 Book_quantity int not null,
 primary key(Book_Id)
 );
 
insert into Book_Now_Info values (1,'钢铁是怎样炼成的','保尔·柯察金','5');
insert into Book_Now_Info values (2,'小王子','安托万·德·圣·埃克苏佩里','3');
insert into Book_Now_Info values (3,'西游记','吴承恩','3');
insert into Book_Now_Info values(4,'战争与和平','列夫 · 托尔斯泰','0');
insert into Book_Now_Info values(5,'巴黎圣母院','维克多·雨果','6');
insert into Book_Now_Info values(6,'童年','高尔基','4');
insert into Book_Now_Info values(7,'呼啸山庄','艾米莉·勃朗特','3');
insert into Book_Now_Info values(8,'大卫·科波菲尔','查尔斯·狄更斯','9');
insert into Book_Now_Info values(9,'红与黑','司汤达','7');
insert into Book_Now_Info values(10,'悲惨世界','维克多·雨果','9');
insert into Book_Now_Info values(11,'安娜·卡列尼娜','列夫·托尔斯泰','15');
insert into Book_Now_Info values(12,'约翰·克利斯朵夫','罗曼·罗兰','9');
insert into Book_Now_Info values(13,'飘','玛格丽特·米切尔','25');



/*书籍详细信息表，用于下载和在线阅读*/
drop table Book_detail;

create table if not exists Book_detail(

Book_name varchar(50) not null,
Book_Author varchar(50) not null,
Book_context text not null,
Book_down varchar(50) not null
);

SELECT * FROM book_detail;

insert into Book_detail values('小王子','安托万·德·圣·埃克苏佩里','http://baike.baidu.com/link?url=mNKexm33wWvKjLWApjmaI6PWY_ZkArkQxFuPLlESxK-1UutD9wMf140lPiG8pSYqmc8T3BTard0i2UGth4_ligNVvuD6bmB0wwHkcgTvw4_','xiao.pdf');

insert into Book_detail values('钢铁是怎样炼成的','保尔·柯察金','http://baike.baidu.com/item/%E9%92%A2%E9%93%81%E6%98%AF%E6%80%8E%E6%A0%B7%E7%82%BC%E6%88%90%E7%9A%84/67','gangtie.pdf'); 
insert into Book_detail values('西游记','吴承恩','http://baike.baidu.com/link?url=grlyyi-JoPz7gXGul4rzSBWtfwSJAyNdxwuC3GPySnR58p1it2HlAQP669BVbuVnnhjsbyeHzLhr5Kxz1BwShWpnSE8_wzxIWstcAsM3YEg76zdWYUqk7FkxZhD7MNFe','xi.pdf');
insert into Book_detail values('战争与和平','列夫 · 托尔斯泰','http://baike.baidu.com/link?url=6q4OrKJBfLYuTyDCrOIoBIPJ7lf0HhE0SFvjsGYtCnGPgqytnAfC3tl94iRprfiiGnruS1J3Yc3Cb3QsB07jDPhdHbDb3EhDyvyj4VjIQ6Fs1w5bPJfiFxzZVtzO-T6-_ldz-U3VHnr2J-tHG92pDq','Battle.pdf');
insert into Book_detail values('巴黎圣母院','维克多·雨果','http://baike.baidu.com/link?url=u7Itdghxhg9AG1xINaFM8APKakxpADDpOY4dDToo7Dd9kOM7FWEEClKDcdsiPnR_365bDs6XRDh99LIUXaaD3K','Paris.pdf');
insert into Book_detail values('童年','高尔基','http://baike.baidu.com/item/%E7%AB%A5%E5%B9%B4/7814164','Childhood.pdf');
insert into Book_detail values('呼啸山庄','艾米莉·勃朗特','http://baike.baidu.com/item/%E5%91%BC%E5%95%B8%E5%B1%B1%E5%BA%84/1720','huxiao.pdf');
insert into Book_detail values('大卫·科波菲尔','查尔斯·狄更斯','http://baike.baidu.com/link?url=mQa_kcMgOHHfhoRIbaWLnm8a4piuy1gzUsZuViT7YLtMaCODWB9lkeTEey-9xce4rjj2U-HmaiNPZ5vwQqrwhK','David.pdf');
insert into Book_detail values('悲惨世界','维克多·雨果','http://baike.baidu.com/link?url=69huVzYFWeJTrEHIzrmdRTpy6qPYGWN6LWljqso57xQW8SJK24shhhE7--QmGmk4-wnRP2Ta65nVQVwXvLfRSq','bei.pdf');
insert into Book_detail values('飘','玛格丽特·米切尔','http://baike.baidu.com/item/%E9%A3%98/8246660','piao.pdf');
insert into Book_detail values();
insert into Book_detail values();

update book_detail set Book_down='piao.pdf' where Book_name='飘';
update book_detail set Book_down='xi.pdf' where Book_name='西游记';
update book_detail set Book_down='xiao.pdf' where Book_name='小王子';


/*借书表*/
 drop table M_Info;
 create table if not exists M_Info
(
M_id int not null,
M_name varchar(50) not null,
M_address text not null,
M_phone bigint not null,
M_book varchar(50) not null,
M_far int not null,
M_date date not null,
M_date2 date not null
);

insert into m_info values('1','justin','QD University','15366958123','大卫·科波菲尔','1','2016-09-25','2016-10-02');
insert into m_info values('2','Saber','Railway Station','13623565789','悲惨世界','8','2016-10-02','2016-10-09');
insert into m_info values('3','jack','XinJiaZhuang','13826565785','巴黎圣母院','4','2016-10-03','2016-10-10');
insert into m_info values('4','Emily','FuShan Apartment','15626565358','小王子','2','2016-09-29','2016-10-06');
insert into m_info values('2','Saber','Railway Station','13623565789','西游记','8','2016-09-25','2016-10-02');
insert into m_info values('3','jack','XinJiaZhuang','13826565785','红与黑','4','2016-09-20','2016-09-27');

select * from m_info;

/*图书快递费用表*/
  drop table Money_Info;
  create table if not exists Money_Info
(
Mem_Id int not null,
Mem_name varchar(50) not null,
money int not null
);

/*借书但未借给表*/
 drop table t_Info;
 create table if not exists t_Info
(
M_id int not null,
M_name varchar(50) not null,
M_address text not null,
M_phone bigint not null,
M_book varchar(50) not null,
M_far int not null,
M_date date not null,
M_date2 date not null
);

select * FROM t_info;
/*超出日期归还罚款表*/

drop table fine;
 create table if not exists fine
  (
  Mem_Id int not null,
  Mem_name varchar(50) not null,
  money long not null

);


/*管理员登陆表*/



 create table if not exists Man_log
 (Man_id int not null,
 Man_password varchar(50) not null,
 primary key(Man_id)
 );
 
 insert into Man_log values (2016,'niit'); 


/*供应商表*/

drop table Pro_Info;
create table if not exists Pro_Info
(
Pro_Id int not null,
Pro_name varchar(50) not null,
Book_name varchar(50) not null,
 Book_Author varchar(50) not null,
 Book_quantity int not null,
 primary key(Pro_Id)
);

/*供应商注册*/
create table Pro_register(
Pro_id int not null,
Pro_pass varchar(50) not null,
Pro_name varchar(50) not null,
primary key(Pro_id)
);

/* tell表*/

create table tell(

id int not null,
name varchar(50),
book_name varchar(50),
yn boolean not null

);
SET SQL_SAFE_UPDATES = 0;
update book_detail set Book_down='小王子.txt' where Book_name='小王子';