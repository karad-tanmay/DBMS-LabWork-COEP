-- Find pairs of stations (station codes) that have a track (direct connection) with distance less than 20Kms between them.
SELECT stcode1, stcode2
FROM track
WHERE distance < 20;

-- Find the IDs of all the trains which have a stop at THANE
SELECT id
FROM trainhalts, station
WHERE trainhalts.stcode = station.stcode AND station.name = 'Thane';

-- Find the names of all trains that start at MUMBAI.
SELECT train.name
FROM train, trainhalts, station
WHERE train.id = trainhalts.id AND trainhalts.stcode = station.stcode AND trainhalts.seqno = 0 AND station.name = 'Mumbai';

-- List all the stations in order of visit by the train 'CST-AMR_LOCAL'.
SELECT station.name
FROM station, trainhalts, train
WHERE station.stcode = trainhalts.stcode AND trainhalts.id = train.id AND train.name = 'CST-AMR_LOCAL'
ORDER BY trainhalts.seqno;
