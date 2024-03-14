create table member(
	name varchar2(30),
	userid varchar2(30) PRIMARY key,
	pwd VARCHAR2(20),
	email varchar2(30),
	phone char(13),
	admin number(1)
);

create table employees(
    id varchar2(10) not null primary key,
    pass varchar2(10) not null,
    name varchar2(24),
    lev char(1) default 'A',
    enter date default sysdate,
    gender char(1) default '1',
    phone varchar2(20)
);

desc member;

select * from member;
select * from employees;



DROP TABLE EMPLOYEES;

CREATE TABLE EMPLOYEES(
  id VARCHAR2(10) NOT NULL,
  pass VARCHAR2(10) NOT NULL,
  NAME VARCHAR2(24),
  lev char(1) DEFAULT 'A',
  enter DATE,
  gender CHAR(1) DEFAULT '1',
  phone  VARCHAR2(30),
  PRIMARY KEY(id)
);

INSERT INTO EMPLOYEES
VALUES('admin','1111','���','A',TO_DATE('2014/04/17','yy/mm/dd'), '1', '010-1111-1111');

INSERT INTO EMPLOYEES
VALUES('subin','2222','������','B',TO_DATE('2014/04/17','yy/mm/dd'), '2', '010-2222-2222');
INSERT INTO EMPLOYEES
VALUES('pinksung','3333','������','A',TO_DATE('2014/04/17','yy/mm/dd'), '2', '010-2222-2222');

commit;

select * from EMPLOYEES;

select * from EMPLOYEES where id = 'admin';

desc EMPLOYEES;



create table product(
    code number(5) primary key,
    name varchar2(100) not null,
    price number(8) not null,
    pictureurl varchar2(50),
    description VARCHAR2(1000)
);

create SEQUENCE product_seq start with 1 increment by 1;

insert into product values(product_seq.nextval, '������ ���� ����ִ� �����ͺ��̽�', 27000, 'db.jpg', '�����ͺ��̽��� ���� ��� ���� ���� ����ְ� ������ ����...'); 
insert into product values(product_seq.nextval, '��ǥ���� ���� HTML5', 25000, 'html5.jpg', 'HTML5 ���̵��. Ȩ������ ������ ���� �ʼ� ���� HTML �⺻ ����...'); 
insert into product values(product_seq.nextval, 'Dynamic Programming book �ø���-01 ����Ŭ 11g + PL/SQL', 25000, 'oracle.jpg','Dynamic �ǹ� ��Ī ���α׷��� Book�� ù��° å����, ����Ŭ 11g�� ���ο� ...'); 
insert into product values(product_seq.nextval, 'Visual C++ MFC ������ ���α׷���', 26000, 'mfc.jpg', 'Visual C++�� ó�� �����ϴ� ������ �����̿� ���� Visual C++...'); 
insert into product values(product_seq.nextval, 'jQuery and jQuery Mobile : �����ϱ� ���� Ǯ�', 25000, 'jquery.jpg', '�ҽ� �ϳ��� ����ũž�� ����ϱ��� HTML5�� �Բ� ����Ѵ�. �ʺ��ڵ鵵 ...');

commit;
DROP TABLE product;
select * from PRODUCT;
desc PRODUCT;






DROP TABLE movie;
DROP SEQUENCE movie_seq;

CREATE SEQUENCE movie_seq INCREMENT BY 1 START WITH 1;
CREATE TABLE movie(
code number(4) PRIMARY KEY,
title VARCHAR2(50),
price NUMBER(10),
director VARCHAR2(20),
actor VARCHAR2(20),
poster VARCHAR2(100),
synopsis VARCHAR2(1000));

insert into movie values(movie_seq.nextval,
'������',  10000, '���¿�', '������', 'movie1.jpg',
'�Ŵ��� ������ ���� ������ ����� ���� ������.
 �� ���� �����ϴ� ������ ��� �������� �ҹ�����ŷ���Ҹ� �����ϴ� �� �����Ҹ�, �������� �������� �ʴ� �ϸ� ����Ʈ�� ��п�� ǥ������ ���縦 �˰� �ȴ�. ���� ��ü�� �������� ���� �ڸ� �Ѵ� �������� �� ���Ŀ� ������ ��û�� ������ ���� �˰� �Ǹ鼭 ������ �� ���� ���⿡ ������.
 ���� ǥ������ �����ϰ� �������� ����ϱ� ���� �İߵ� ������� ���� �Ƴ� ������ �ݿ��ڷ� ���ư��� �̸� ���̷� ������ ���̰�, ǥ������ ��� �Ϳ� ������ ���Ѵ�. ǥ������ ������� ���� �ӿ��� �������� ���˸� �����ϱ� ���ؼ� �׳ฦ �����ϰ� ������, ����ġ ���� �Ƴ��� ����� �˰� �Ǹ鼭 ȥ���� �۽��̰� �Ǵµ�...');
insert into movie values(movie_seq.nextval,
'�ڼ��Ǵ�',  10000, '������', '�ڽž�, ������', 'movie2.jpg',
'�Ǵ޷� �����, �������� ����� �װ��� �����δ�!
�������� ���� �ް�, �����鿡�� ��� �޴� ����Ʈ �Ǵ� ��ȣ(�ڽž�). 
�� �η��� �� ���� �½��屸 �ϴ� ���� �Ǵ� �λ��� ���� �С��� ��Ŭ�� �ɾ���?! 
ȣ��ŽŽ ��ȣ�� ���� ��ȸ�� �븮�� ����(������)�� Į�� �°� ���İ��� �ٲ� ��� ������ 
 ������ �ڼ�����, �㿡�� �Ǵ��� �������� �Ǿ���� ��ȣ! ');
insert into movie values(movie_seq.nextval,
'���������',  10000, '�� ����', '�� ���', 'movie3.jpg',
'�� �� ������ ��ģ �˷� 19���� �������̸� �� �����(�� ���). �쿬�� ���� �ź��� �ձ� �Ʒ� ������ �ް� ���ο� ���� ����Ѵ�. ��ü�� ����� ���鷻�̶�� �� �̸����� ������ �̵��� ����� ������� ����� ����, ��ƾ(�� �ؼ�����)�� ����ġ��, ������ ���տ� �� ��ƾ�� �ڽ��� ������ ����� �� ����Ʈ(�Ƹ��� ����������)�� ����忡�� ��Ź�Ѵ�. �׷��� ����Ʈ�� �����⵵ ���� �氨 �ں���(���� ũ�ο�)�� ������� ��¥ ��ü�� �˾�������, ������ �������� �ٽ� ü���� ������� ����Ʈ�� ã�� Ż���� �����ϴµ��� ');
insert into movie values(movie_seq.nextval,
'7������ ����',  9000, '��ȯ��', '���·�, ���ҿ�', 'movie4.jpg',
'�־��� ��ǹ����� ���� ������ 7���濡 �̻��� ���� ���Դ�!
 �״� �ٷ� 6�� ������ ���ٺ� �뱸! 
 ��� �˸� ���� ��ƿ� 7���� �йи��鿡�� ������ �̼��� �ٷ� �뱸 �� �����̸� �ܺ��� ���� ���Ա����� �����ҿ� ��.��.��.��.��!
 2013�� ����, ������ ���� ������ ��������� �յ������� ���۵ȴ�!');
COMMIT;


