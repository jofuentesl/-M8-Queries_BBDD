
--**********Nivell 1***********

--Exercici 1

SELECT COUNT(*) as Total from Flights;


--Exercici 2

SELECT Origin as Origin, AVG(ArrDelay) AS Prom_Arrivades, AVG(DepDelay) AS Prom_sortides FROM Flights GROUP BY Origin;


--Exercici 3

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS Prom_Arribades FROM Flights GROUP BY flightID ORDER BY origin, colYear ASC, ArrDelay DESC;


--Exercici 4

SELECT City, colYear, colMonth, AVG(ArrDelay) AS Prom_Arribades FROM Flights INNER JOIN USAirports ON Flights.Origin = USAirports.IATA GROUP BY flightID ORDER BY city, colYear ASC, ArrDelay DESC 
		

--Exercici 5

SELECT UniqueCarrier, colYear, colMonth, COUNT(*) AS Total_Cancelled FROM Flights WHERE Cancelled = 1 GROUP BY colMonth ORDER BY Total_Cancelled ASC


--Exercici 6

SELECT TailNum, SUM(Distance) AS Total_Distance FROM Flights WHERE TailNum IS NOT NULL AND TailNum != "#¿NOMBRE?" GROUP BY TailNum ORDER BY Total_Distance DESC LIMIT 10;


--**********Nivell 2***********

--Exercici 7

SELECT DISTINCT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM Flights GROUP BY UniqueCarrier HAVING AVG(ArrDelay)>10 ORDER BY AVG(ArrDelay) DESC;


--**********Nivell 3***********

--Exercici 8

CREATE TABLE nivell_3
SELECT DISTINCT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM Flights GROUP BY UniqueCarrier HAVING AVG(ArrDelay)>10 ORDER BY AVG(ArrDelay) DESC;

