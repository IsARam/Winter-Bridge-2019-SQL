#Question 1

SELECT dest AS "Destination", max(distance) AS "Furthest Distance"
FROM flights.flights;

#Question 2

SELECT distinct(engines),model,maxseats
From flights.planes
Inner Join
	(select distinct(engine), max(seats) as Maxseats
    From flights.planes
    Group by engines) topscore
on flights.planes.engine = topscore.engine
and flights.planes.seats = topscore.Maxseats
group by engines;

#Question 3

select COUNT(*) as "Total number of flights"
FROM flights.flights;

#Question 4 & 5

SELECT carrier,count(*) AS "Number of Flights"
FROM flights.flights
group by carrier
order by "Number of Flights" desc;

#Question 6

SELECT carrier,count(*) AS "Number of Flights"
FROM flights.flights
group by carrier
order by "Number of Flights" desc
limit 5;

#Question 7

SELECT carrier,count(*) AS "Number of Flights"
FROM flights.flights
where distance>1000
group by carrier
order by "Number of Flights" desc
limit 5;

Question #8
How many carriers are there in the flights database?

SELECT count(carrier) FROM flights.airlines;