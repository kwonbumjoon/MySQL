use sakila;
show tables;

select email
from customer
where customer_id = 1;

select first_name, last_name
from customer
where email = 'MARY.SMITH@sakilacustomer.org';

select first_name, last_name
from cusmtomer
where email = (select email 
				from customer
				where customer_id = 1);

select customer_id, first_name, last_name, email
from cusmtomer
where customer_id in (16, 64, 124, 1000);
select customer_id, first_name, last_name, email
from cusmtomer
where customer_id in (select customer_id
						from cusmtomer
						where active = 0);

select customer_id, first_name, last_name, email
from cusmtomer
where active = 0;

-- INSERT
-- INSERT INTO 테이블명(필드 1, 필드 2, ....)
-- VALUE(값1, 값2, ....);

desc actor;

insert into actor(actor_id, first_name, last_name, last_update)
values(201, '최', '민식', now());
insert into actor(actor_id, first_name, last_name, last_update)
values(202, '김', '고은', now());

insert into actor
values(203, '유', '해진', now());

insert into actor
values(202, '김', '고은', now());

select * from actor order by actor_id desc;


-- UPDATE

-- UPDATE 테이블명
-- SET 필드1 = '값1', 필드2 = '값2' ...
-- WHERE 필드 = '값'; 반드시 기입

update actor set first_name = '박'
where actor_id = 203;
-- 여러가지면 아래처럼 여러가지를 변경하면 됨
update actor set first_name = '박', last_name = '수진', last_update = now()
where actor_id = 203;

select * from actor order by actor_id desc;


-- DELETE

-- DELETE FROM 테이블
-- WHERE 조건(반드시 기입);

delete from actor where actor_id = 203;

delete from actor where actor_id > 200;

select * from actor order by actor_id desc;

/*
*고객
-고객 ID — 자동증가
-이름
-핸드폰번호
-성별
-주소
-나이
*/
select * from 고객;

-- 테이블 생성

create table 고객(
	고객ID int not null auto_increment primary key, -- auto_increment = 자동증가, primary key = 기본키
    이름 varchar(30) not null,
    핸드폰 char(13),
    주소 varchar(100),
    나이 int not null
);

desc 고객; -- 출력

insert into 고객(이름, 핸드폰, 나이)
values('조운','010-1111-2222', '30');

select * from 고객;
-- delete from 고객 where 고객ID > 0;

/*
상품
-상품ID  — int auto
-상품명  — varchar(30)
-가격  — int
-고객ID  — int
*/

create table 상품(
	상품ID int not null auto_increment,
    상품명 varchar(10) not null,
    가격 int default 0,
    고객ID int not null, 
    primary key(상품ID)
);

insert into 상품(상품명, 가격, 고객ID)
values('새우깡', 1200, 1);

insert into 상품(상품명, 가격, 고객ID)
values('감자침', 1400, 2);

insert into 상품(상품명, 가격, 고객ID)
values('새우깡', 1200, 3);

-- delete from 상품 where 상품ID > 0;

select * from 상품;

-- join 연습 --------------------------------------
select 고객ID, 상품ID, 상품명, 가격
from 고객 a inner join 상품 b
on a.고객ID = b.고객ID;

select 고객ID, 상품ID, 상품명, 가격
from 고객 a, 상품 b
where a.고객ID = b.고객ID;

select 고객ID, 상품ID, 상품명, 가격
from 고객 a left join 상품 b
on a.고객ID = b.고객ID;

select a.고객ID, 이름, 상품ID, 상품명, 가격;

select * from 고객;
select * from 상품;
desc 고객;

-- 항목 추가하는 구문
alter table 고객 add column gender boolean default 0;
alter table 고객 modify column 이름 varchar(20) not null;
alter table 고객 change gender 성별 boolean default 0;

alter table 고객 drop column 성별;	-- 항목 삭제하는 구문

-- drop table 고객;
-- drop table 상품;


/*
create table 상품(
	상품ID int not null auto_increment,
    상품명 varchar(10) not null,
    가격 int default 0,
    고객ID int not null, 
    primary key(상품ID),
    foreign key(고객ID) references 고객(고객ID)
);
*/

delete from 상품 where 상품ID = 3;
alter table 상품
add constraint fk_고객ID
foreign key(고객ID) references 고객(고객ID);

desc 상품;

insert into 상품(상품명, 가격, 고객ID)
values('새우깡', 1200, 1);

select * from 상품;

delete from 상품 where 고객ID = 1;

alter table 상품
add constraint fk_고객ID
foreign key(고객ID) references 고객(고객ID)
on delete cascade;

create table 고객2(
	고객ID int auto_increment primary key,
    이름 varchar(30) not null,
    주소 varchar(100)

);

select * from 고객2;
delete from 고객2 where ID = 1;

insert into 고객2(이름, 주소)
select 이름, 주소 from 고객;

delete from 고객 where 고객ID = 2;

select * from 상품;
delete from 고객 where 고객ID = 2;





