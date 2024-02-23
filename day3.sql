-- group by : 지정한 열 기준으로 그룹화하여 집계함수 적용(count, sum, avg, max, min)
-- group by에서 조건을 줄 때는 having절
select * from film;

select district, count(*) from address
group by district;

select rating from film; -- rating 의 항목별 갯수를 구하기 위해 아래처럼 표현함
select rating, count(*) from film
group by rating;

select special_features, count(*) from film
group by special_features;

select rating, special_features, count(*) from film		-- rating, special_features 두 가지를 모두를 가진 항목별 갯수
group by rating, special_features;

select rating, sum(length) from film
group by rating;

select staff_id, count(*), max(amount), min(amount) from payment
group by staff_id;

select rating, special_features, count(length) from film
group by rating, special_features;

select rating, special_features, count(length) from film
group by rating, special_features
having count(length) >= 15;			-- 조건문을 걸고 싶을 때 having 사용

select rating, special_features, count(length) as 갯수 from film
group by rating, special_features
having 갯수 >= 15;

select rating, special_features, count(length) as 갯수 from film
group by rating, special_features
having 갯수 >= 15
order by rating;		-- rating으로 정렬



