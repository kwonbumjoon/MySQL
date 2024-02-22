show databases; -- 전체 데이터 배이스 목록

use sakila;		-- 전체 중 sakila 데이터베이스 사용하겠다.(선언)
show tables;	-- sakila 데이터베이스 포함도니 테이블 목록 보여주기

desc actor;		-- actor  테이블 구조를 보여주는 것

select count(*) from actor;		-- actor 테이블 전체 갯수

select first_name from actor;	-- actor 테이블에서 first_name만 보겠다.

select first_name from actor
where first_name like 'r%';

select * from actor_info;
select * from address;
select * from city;
select first_name, last_name from actor;
select title, rating from film;

select title as 제목, rating as 시간 from film; -- 열 제목을 as 다음 이름으로 변경
select title 제목, rating 시간 from film; -- as 생략 가능

select * from rental;
select rental_date, return_date 반납일 from rental;

-- 중복제거
select last_name from actor;
select distinct last_name from actor;

select category from film_list;
select distinct category from film_list;

-- where 특정 조건 만족하는 데이터만 추출 할 때
-- 연산자(산술, 비교(=, <>, >, >=), 논리(and, or, not))
-- 집합연산자(union, union all, minus, intersect)
-- sql연산자(between, in, like, is null)

-- 비교 연산자

select * from customer
where store_id = 1;		-- store_id가 1인 데이터만 보여줌

select * from film
where rating = 'G';		-- 대 소문자 구별 하지 않음

select * from film
where length > 100;

select * from rental;

select * from rental
where rental_date < '2005-05-25';	-- 2005-05-15 날짜보다 이전 데이터만 추출

select * from rental
where customer_id > 300;

select * from city
where city = 'london';

-- 논리 연산자

select * from city
where country_id > 40 and country_id < 50;