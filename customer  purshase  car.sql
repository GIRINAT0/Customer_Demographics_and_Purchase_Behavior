use youtube;
select *from car_prices;
select min(price) as price from car_prices
where color='red' and make='ford';

select make, avg(mileage) from car_prices
group by make;


select count("fusion")from car_prices
group by  make="nissan" and state="tx";


select  avg(mileage) from car_prices
where make="nissan" and year between 2012 and 2015;

select *from car_prices;
select make,avg(mileage) from car_prices
where year between 2010 and 2015 and color= 'red'
group by make

having avg(mileage)>(select avg(mileage)
  from car_prices );

-- Find the total number of cars. 
select count(make) from car_prices;

-- 2. Find the average price of all cars. 
select make, avg(price) as avg_price from car_prices
group by make;

-- 3. Find the maximum price of a car. 
select make, max(price) as max_price from car_prices
group by make
limit 1;

-- 4. Find the minimum mileage of cars
select *  from car_prices
where mileage=(select min(mileage) from car_prices);

-- 5. Count the number of cars in each state.
select state,count(make) from car_prices
group by state;

-- 6. Find the average price for each make.

select make,avg(price) from car_prices
group by make;

-- 7. Count number of cars for each year.

select year, count(make) from  car_prices
group by year;

-- 8. Count cars for each color, sorted by highest count. 
select color, count(make)as count_cars from car_prices
group by color
order by count_cars desc;

-- 9. Find the average mileage for each model. 
select model, avg(mileage) from car_prices
group by model;

-- 10. Get the top 5 most expensive cars (make, model, price)
select make,model,price from car_prices
group by make,model,price
order by price desc
limit 5 ;	 		
						
-- 11. Find the average price of cars in each state, sorted by highest average price.
select make,avg(price) as  highest_avg from car_prices
group by make
order by highest_avg desc
limit 6;

-- 12. Count number of cars for each make, sorted descending.

select make,count(make) as count_cars from car_prices
 group by make
 order by count_cars desc;
 
-- 13. Find the maximum price for each model, sorted highest first.
select model, max(price) as max_price from car_prices
group by model
order by max_price desc;

-- 14. Find the minimum mileage for each make, sorted lowest first

select make,min(mileage)from youtube.car_prices
group by make;

-- 15. Get the top 3 states with the highest number of cars. 
select state,count(make) as highest_car from car_prices
group by state
order by  highest_car desc 
limit 3;
select *from car_prices;

-- 16. Find the average price per year, only for cars where year > 2015

select year,avg(price) as avgprice from car_prices

where year > 2015
group by year
order by  year ;

-- 17. Count cars by make and model, sorted by count descending.
select  make,count(make),count(model)  from car_prices
group by make
order by make desc;

-- 18. Find the total price of cars per state, sorted highest to lowest
select state,sum(price) from car_prices
group by state
order by sum(price) desc;

-- 19. Find the top 5 cheapest cars. 

select * from car_prices
order by price 
limit 5;

-- 20. Find the average mileage for each state, sorted by lowest mileage.
select state,avg(mileage)as avg_mileage from car_prices
group by state
order by avg_mileage asc;

-- 21. Find the top 5 most expensive cars for each make

select distinct make from Car_prices;
select*from car_prices;

SELECT make, model, price
FROM  (
    SELECT 
        make,
        model,
        price,
        ROW_NUMBER() OVER (PARTITION BY make ORDER BY price DESC) AS rank_num
    FROM car_prices
) ranked
WHERE rank_num <= 5;





SELECT make, model, price
FROM car_prices
WHERE make = 'Toyota'
ORDER BY price DESC
LIMIT 5;



SELECT make, model, price
FROM car_prices
WHERE make = 'Honda'
ORDER BY price DESC
LIMIT 5;



SELECT make, model, price
FROM car_prices
WHERE make = 'Ford'
ORDER BY price DESC
LIMIT 5;

