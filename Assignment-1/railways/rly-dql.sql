-- Find pairs of stations (station codes) that have a track (direct connection) with distance less than 20Kms between them.
SELECT stcode1, stcode2
FROM track
WHERE distance < 20;

-- Find the IDs of all the trains which have a stop at THANE
SELECT id
FROM trainhalts
JOIN station
ON trainhalts.stcode = station.stcode
WHERE station.name = 'Thane';

-- Find the names of all trains that start at MUMBAI.
SELECT train.name
FROM train
JOIN trainhalts ON train.id = trainhalts.id
JOIN station ON trainhalts.stcode = station.stcode
WHERE trainhalts.seqno = 0 AND station.name = 'Mumbai';

-- List all the stations in order of visit by the train 'CST-AMR_LOCAL'.
SELECT station.name
FROM station
JOIN trainhalts ON station.stcode = trainhalts.stcode
JOIN train ON trainhalts.id = train.id
WHERE train.name = 'CST-AMR_LOCAL'
ORDER BY trainhalts.seqno;
