SELECT c.points as total_points , cr.points AS points_gained, c.`position` , c2.name AS constructor_name , r.round , r.name AS race_name , date
#SELECT *
FROM f1db.constructorStandings c
LEFT JOIN f1db.constructorResults cr ON cr.raceId=c.raceId AND cr.constructorId = c.constructorId 
LEFT JOIN f1db.constructors c2 ON c2.constructorId=c.constructorId  
LEFT JOIN f1db.races r ON r.raceId=c.raceId
WHERE year = 2022
ORDER BY date ASC;