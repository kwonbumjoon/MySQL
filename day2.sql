show databases;
use sakila;
show tables;

select * from film
where rental_duration >= 5 and rental_duration <= 7;

select * from rental
where rental_date >= '2005-05-26' and rental_date < '2005-05-28';

-- if(a % 2) != 1)

select * from film
where not rating = 'G';

select * from film
where rating = 'PG' or rating = 'NC-17' or rating = 'PG-13';

select * from film
where rating in ('PG', 'NC-17', 'PG-13', 'R');

select * from film
where rating = 'G';

select * from film
where rating not in ('PG', 'NC-17', 'PG-13', 'R');

select * from customer
where customer_id between 10 and 19;

select * from film
where length between 100 and 109;

select * from film
where length not between 100 and 109;

select * from rental
where rental_date between '2005-05-25' and '2005-05-26';

select * from address
where district in ('California', 'Texas');

select * from address
where district = 'California' or district = 'Texas';

select * from address
where district not in ('California', 'Texas');

select * from address
where address2 is null;

select * from address
where address2 is not null;

select * from staff
where picture is null;		-- null 값인 것

select * from staff
where picture is not null;	-- null 값이 아닌 것

-- LIKE 연산자 % => 0개 이상의 문자, _ => 1개 문자 대응

select * from actor
where first_name like 'J%';		-- first_name이 J로 시작하는 대상 전체 검색

select * from actor
where first_name like 'J__';		-- first_name이 J로 시작하면서 글자수가 총 3개인 것.

select * from actor
where first_name like '%EN';		-- first_name이 뒤 글자가 EN으로 끝나는 것 추출

select * from actor
where first_name like '___EN';		-- first_name이 앞글자 3개는 아무거나 뒤 글자가 2개는 EN

select * from actor
where first_name like '%EN%';		-- EN포함된 것 모두 추출


-- order by ==> asc(오름차룬:기본), desc(내림차순)

select first_name from actor
order by first_name asc;		-- asc 생략가능

select first_name from actor
order by first_name desc;

select * from actor_info
order by first_name, last_name desc;
-- 첫번째 조건 first_name 오름차순, 중복되면 두번째 조건으로 last_name 내림차순

select * from actor_info
where first_name like '%A%';

select * from actor_info
where first_name like '%A%'
order by first_name, last_name desc;

show tables;

desc actor;

-- 함수
select ceil(1.0), ceil(1.4), ceil(1.8), ceil(2.0);

select floor(1.0), floor(1.4), floor(1.8), floor(2.0);

select round(1.0), round(1.4), round(1.8), round(2.0);

select round(1.1234567,1), round(1.1234567,3), round(1.1234567,5);

select TRUNCATE(1.0,0), TRUNCATE(1.4,0), TRUNCATE(1.8,0), TRUNCATE(2.0,0);

select TRUNCATE(1.1234567,1), TRUNCATE(1.1234567,3), TRUNCATE(1.1234567,5);

select abs(123), abs(-123), pow(2,3), sqrt(25), power(2,3), mod(10,3);

select greatest(10,2,9,87,100);		-- 최대값
select least(10,2,9,87,100);		-- 최소값

select substring('abcefg',1,3);		-- java => substring('abcefg',1,3); => bc

select lower('MySQL is an open source relational database management system');
select upper(first_name) from actor;

select first_name, left(first_name,3), right(first_name,3), mid(first_name,2,5) from actor;

select first_name, lpad(first_name,10,'*'), rpad(first_name,10,'*') from actor;

select first_name, length(first_name) from actor;

-- 첫 글자 표시해주시고 나머지 자리수는 * 표시는 어떻게?	 '*') as 성명 from actor;

select repeat('*', length(first_name)-1) from actor;

select concat('abc','def');

select concat(left(first_name,1), repeat('*', length(first_name)-1)) as 성명 from actor;

-- 날짜 시간

select now(), sysdate(), current_timestamp();		-- 날짜 시간alter

select current_date(), curdate();
select current_date(), curtime();

select year(now());
select month(now());
select day(now());

select day(rental_date) from rental;

select now();

select date_format(now(), '%Y-%m-%d') 요일;
select date_format(now(), '%Y/%m/%d') as 날짜;
select date_format(now(), '%D %M %y') as 날짜;

select * from actor;
select count(*) from actor;
select count(first_name) from actor;

select count(address), count(address2) from address;
select * from address;

select count(*), sum(store_id), avg(store_id) from customer;

select round(avg(amount),2) from payment;

