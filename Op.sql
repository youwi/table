drop table BDMS_OBJECT cascade constraints;
drop sequence SEQ_OBJECT_ID;
drop table BDMS_PROPERTY cascade constraints;
drop sequence SEQ_PROPERTY_ID;
drop table T_CUSTOMER cascade constraints;
drop sequence SEQ_CUSTOMER_ID;


create table T_CUSTOMER
(
  _id VARCHAR2(10) not null,
  name  VARCHAR2(30) not null,
  address    VARCHAR2(50) ,
  gender  VARCHAR2(30)
 
)
;

alter table T_CUSTOMER
  add constraint PK_CUSTOMER primary key (_id);
  
create sequence SEQ_CUSTOMER_ID
start with 10000
increment by 1;
--对象表
create table BDMS_OBJECT
(
  OBJECT_ID VARCHAR2(10) not null,
  NAME  VARCHAR2(30) not null,
  FULL_NAME  VARCHAR2(255)
)
;
alter table BDMS_OBJECT
  add constraint PK_OBJECT primary key (OBJECT_ID);
  
create sequence SEQ_OBJECT_ID
start with 10000
increment by 1;

--对象属性表
create table BDMS_PROPERTY
(
  PROPERTY_ID VARCHAR2(10) not null,
 OBJECT_ID 	   VARCHAR2(10)not null,
  PROPERTY_NAME  VARCHAR2(30) not null,
  PROPERTY_FULLNAME  VARCHAR2(30) not null,
  PROPERTY_TYPE         VARCHAR2(20) not null,
  PROPERTY_LENGTH    NUMBER(10) ,
  DESCRIPTION VARCHAR2(255)
)
;

alter table BDMS_PROPERTY
  add constraint PK_PROPERTY primary key (PROPERTY_ID);
  
--alter table  BDMS_PROPERTY
  --add constraint FK_OBJECT_ID foreign key(OBJECT_ID) references BDMS_OBJECT(OBJECT_ID);
  
create sequence SEQ_PROPERTY_ID
start with 10000
increment by 1;

--插入对象表
insert into BDMS_OBJECT (OBJECT_ID, NAME, FULL_NAME)
values ('1', 'CUSTOMER', '客户');
insert into BDMS_OBJECT (OBJECT_ID, NAME, FULL_NAME)
values ('2', 'CAR', '汽车');
insert into BDMS_OBJECT (OBJECT_ID, NAME, FULL_NAME)
values ('3', 'OBJECT2', '对象2');
insert into BDMS_OBJECT (OBJECT_ID, NAME, FULL_NAME)
values ('4', 'OBJECT3', '对象3');
insert into BDMS_OBJECT (OBJECT_ID, NAME, FULL_NAME)
values ('5', 'OBJECT4', '对象4');
insert into BDMS_OBJECT (OBJECT_ID, NAME, FULL_NAME)
values ('6', 'OBJECT5', '对象5');
commit;

--插入属性表
insert into BDMS_PROPERTY (PROPERTY_ID,OBJECT_ID,PROPERTY_NAME,PROPERTY_FULLNAME,PROPERTY_TYPE,PROPERTY_LENGTH,DESCRIPTION)
values ('1','1', 'name','姓名','1',30,'描述姓名');
insert into BDMS_PROPERTY (PROPERTY_ID,OBJECT_ID,PROPERTY_NAME,PROPERTY_FULLNAME,PROPERTY_TYPE,PROPERTY_LENGTH,DESCRIPTION)
values ('2', '1','address','地址','1',40,'描述地址');
commit;


insert into T_CUSTOMER (_id,name,address,sex)
values ('1', '客户1', '地址1','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('2', '客户2', '地址2','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('3', '客户3', '地址3','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('4', '客户4', '地址4','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('5', '客户5', '地址5','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('6', '客户6', '地址6','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('7', '客户7', '地址7','');
insert into T_CUSTOMER (_id,name,address,sex)
values ('8', '客户8', '地址8','');
commit;

