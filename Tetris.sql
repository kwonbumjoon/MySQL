create table member(
	name varchar2(30),
	userid varchar2(30) PRIMARY key,
	pwd VARCHAR2(20),
	admin number(1)
);

select * from member;