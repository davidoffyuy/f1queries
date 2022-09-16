SELECT c.points , c.`position` , c2.name AS constructor_name , r.round , r.name AS race_name , date
#SELECT *
FROM f1db.constructorStandings c
LEFT JOIN f1db.constructors c2 USING(constructorId) 
LEFT JOIN f1db.races r USING(raceId)
WHERE year = 2022
ORDER BY date ASC;