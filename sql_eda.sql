select * from mobile;
-- check features and price
select Phone_name,Price from mobile;
-- find the 5 most expensive phone
 select * from mobile order by Price desc limit 5;
 
 -- find the 5 most cheap phone
 select * from mobile order by Price asc limit 5;
 
 -- list of top 5 sumsang phones with price and all features;
 select * from mobile where Brands='Samsung' order by Price desc limit 5;
 
 -- must have android phone then top 5 High price androd phone
 select * from mobile where Operating_System_Type='Android' order by Price desc limit 5;
 
 -- must have android phone then top 5 lower price androd phone
 select * from mobile where Operating_System_Type='Android' order by Price asc limit 5;

 -- must have ios phone then top 5 High price androd phone
 select * from mobile where Operating_System_Type='iOS' order by Price desc limit 5;
 
 -- must have ios phone then top 5 lower price androd phone
 select * from mobile where Operating_System_Type='iOS' order by Price asc limit 5;
 
 -- supports 5g and also top 5 in 5g
 
 select * from mobile where `5G_Availability` ='Yes' order by Price desc limit 5;
 
 -- total Price of all Price with brand name
 
 select Brands ,sum(Price)as total_Price from mobile group by Brands;