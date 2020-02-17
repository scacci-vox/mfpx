DROP TABLE IF EXISTS players;
CREATE TABLE players(Name TEXT, pcount INT);

INSERT INTO players(Name, pcount)
SELECT ClubName, count(*) players FROM classic
WHERE Status != "i"
GROUP BY ClubName ORDER BY players;
