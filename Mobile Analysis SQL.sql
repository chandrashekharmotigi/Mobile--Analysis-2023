create schema mobileanalysis;
use mobileanalysis;

SELECT * FROM mobile;

-- 1. Can you provide a list of mobile features and their prices? --
select Phone_name, Price from mobile;

-- 2. What are the 5 most expensive phones available? --
select * from mobile
order by price desc
limit 5;

-- 3. What are the 5 cheapest phones available? --
select * from mobile
order by price asc
limit 5;

-- 4. Can you list the top 5 Samsung phones with their prices and all features? --
select * from mobile where brands = "samsung" 
order by price desc
limit 5;

-- 5. What are some must-have Android phones and the top 5 high-priced Android phones? --
select * from mobile where Operating_System_Type = "Android" 
order by price desc
limit 5;

-- 6. What are some must-have Android phones and the top 5 low-priced Android phones? --
select * from mobile where Operating_System_Type = "Android" 
order by price asc
limit 5;

-- 7. What are some must-have iOS phones and the top 5 high-priced iOS phones? --
select * from mobile where Operating_System_Type = "IOS" 
order by price desc
limit 5;

--  8. What are some must-have iOS phones and the top 5 low-priced iOS phones? --
select * from mobile where Operating_System_Type = "IOS" 
order by price asc
limit 5;

 -- 9. Which phones support 5G and what are the top 5 phones with 5G support? --
 select * from mobile where 5G_Availability = "Yes" 
 order by price desc
limit 5;

 -- 10.	What is the total price of all mobile phones, sorted by brand name? --
 select brands, sum(price) from mobile group by brands;
