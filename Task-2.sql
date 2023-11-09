

---- Task-2

-- 2. Perform read operation on the designed table created in the above task.
---- a. How many female passengers traveled a minimum distance of 600 KMs?

select * from passenger;

select count(*) as min_distance 
from passenger 
where gender='f' and distance >=600; 


---- b. Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus

select * from passenger;
select * from price;

select * from passenger 
where distance >500 and bus_type='sleeper';



---- c. Select passenger names whose names start with the character 'S'.
  
  select * from passenger where passenger_name like 's%';
  
  
  --- d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, Destination City, Bus type, and Price in the output

select * from passenger;
select * from price;

select passenger_name,passenger.boarding_city,passenger.destination_city,passenger.bus_type,passenger.distance,price.price 
from passenger passenger
left join price price
on passenger.distance=price.distance
and passenger.bus_type=price.bus_type;  


--- e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?
   
   select * from passenger;
   
 select passenger.passenger_name,price.price
 from passenger passenger
 left join price price
 on passenger.distance=price.distance
and passenger.bus_type=price.bus_type
 where passenger.distance >1000 and price.bus_type='sitting'; 
 
 ---- f) what will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
 
 
 select * from passenger;
 select distinct (bus_type),price  
 from price where distance =(select distance from passenger where passenger_name='pallavi');
 
 



---- g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper 

update passenger
set category='non-ac'
where bus_type='sleeper';

select * from passenger;


--- h). Delete an entry from the table where the passenger name is Piyush and commit this change in the database
    
    
    delete from passenger where passenger_name='piyush';
    commit;
    select * from passenger;
    
    
---- i. Truncate the table passenger and comment on the number of rows in the table (explain if required)
    
    
truncate table passenger;
    
select * from passenger;

--- explain: 1) The TRUNCATE TABLE command was used to delete all rows from the "passenger" table.
   --      2) As a result, the "passenger" table is now empty, containing zero rows.
    
--- j) Delete the table passenger from the database

drop table passenger;

