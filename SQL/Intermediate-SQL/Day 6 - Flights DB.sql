-- INNER JOIN
SELECT *
FROM seats

SELECT *
FROM boarding_passes

SELECT COUNT(*), fare_conditions
FROM seats
INNER JOIN boarding_passes
ON seats.seat_no = boarding_passes.seat_no
GROUP BY fare_conditions

