--#POSTGRESQL

--#Table cars

-- #1 Display only car’s brands & car’s models & car’s price
--#kg car tablicanyn ichinen tolko mashinanyn brendin jana modelin jana baasyn chygarynyz

select brand, model , price from cars;

--#2 Display quantity of all cars
--#kg car tablicasynyn ichinen baardyk mashinalardyn sanyn chygarynyz

select count(model) from cars;

--#3 Display all cars where brand is Hyundai
--#kg Brendi Hyundaiga barabar bolgon baardyk mashinalardy chygarynyz

select * from cars where brand='Hyundai';


--#4 Display all Red and Blue cars
--#kg Baardyk Kyzyl jana Kok bolgon mashinalardy chygarynyz

select * from cars where color in ('Red','Blue');

--#5 Display all cars where issued year between 2000 and 2010
--#kg Baardyk 2000 menen 2010chu jyldary arasynda chygarylgan mashinalardy chygarynyz
select * from cars where cars.year_of_issue between 2000 and 2010;



-- #6  Display quantity of cars where car’s brand is Chevrolet
-- #kg Chevrolet brendinde kancha machine bar ekendigin chygarynyz
select count(Case when brand = 'Chevrolet' then 1 end ) from cars;



--#7 Display the average year of manufacture of cars
--#kg Mashinalardyn jyldarynyn ortocho maanisin* (srednoe znachenie) tabynyz
select avg(year_of_issue) from cars;


--#8 Display the cars where brand equals to Audi, Toyota, Kia and Ford
--#kg Audi, Toyota, Kia jana Ford, ushul markadagy baardyk mashinalardy chygargyla

select * from cars where brand in ('Audi','Toyota','Kia','Ford');

--#9 Display cars where car’s model starts with ’T’
--#kg Mashinanyn modeli ’T’ menen bashtalgan mashinalardy chygarynyz

SELECT * FROM cars Where model LIKE 'T%';



--#10 Display cars where car’s model end with ‘e’;
--#kg Mashinanyn modeli ‘e’ menen button mashinalardy chygarynyz

SELECT * FROM cars Where model LIKE '%e';

--#11 Display brands where contains only 5 symbols
--#kg 5 symbol kamtygan brandderdi consolgo chygarynyz

SELECT * from cars where brand LIKE '_____';

--#12 Display all amounts where car's brand is Mercedes-Benz
--#kg brandi Mercedes-Benz bolgon mashinalardyn obshiy baasyn chygarynyz

select sum(price) from cars where brand='Mercedes-Benz';



--#13 Display the most expensive car & the sheepest car
--#kg en kymbet jana en arzan mashinany chygarynyz
select max(price) as MaxPrice,
       min(price) as MinPrice
       from cars;


--#14 Display all cars where car's brand not TOYOTA
--#kg TOYOTAdan bashkasynyn baaryn chygarynyz

select *
from cars where brand <> 'Toyota';

--#15 Display 10 the most expensive cars
--#kg En kymbat 10 mahsinany chygarynyz
select * from cars order by price desc limit 10;


--#16 Display the newest cars between 5th to 15th
--#kg En jany mashinalardyn 5ten bashtap 15chige cheinki mashinalardy chygarynyz
select * from cars order by year_of_issue desc limit 15 offset 5;


--#17 Display cars where car's year of issue not between 1995 and 2005;
--#kg 1995 jana 2005 jyldar arasyndagy mashinalardan bashka baardyk mashinalardy chygarynyz

select * from cars where year_of_issue not between 1995 and 2005;



--#18 Display most cars in one color
--#kg en kop mashinasy bar tustordu korsotunuzdor i kancha mashinesi bar ekendigin dagy korsotunuzdor
--en kop aldynky 5 on
 select color,  count(color) as colorCounter from cars group by color order by colorCounter desc limit 5;

