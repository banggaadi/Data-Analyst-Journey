-- INNER JOIN
SELECT *
FROM seats

SELECT *
FROM flights

SELECT *
FROM boarding_passes

SELECT COUNT(*), fare_conditions
FROM seats
INNER JOIN boarding_passes
ON seats.seat_no = boarding_passes.seat_no
GROUP BY fare_conditions

-- FULL OUTER JOIN
SELECT *
FROM boarding_passes
FULL OUTER JOIN tickets
ON boarding_passes.ticket_no = tickets.ticket_no
WHERE boarding_passes.ticket_no IS NULL 


-- LEFT JOIN
SELECT * FROM aircrafts_data
LEFT JOIN flights
ON aircrafts_data.aircraft_code = flights.aircraft_code
WHERE flights.flight_no IS NULL
-- FIND WHICH SEAT IS FAVORITE
SELECT s.seat_no, COUNT(*) 
FROM seats s
LEFT JOIN boarding_passes b
ON s.seat_no = b.seat_no
GROUP BY s.seat_no
ORDER BY COUNT(*) DESC
-- CHECKING IF THERE ARE ANY SEATS THAT NEVER BEEN BOOKED
SELECT *
FROM seats s
LEFT JOIN boarding_passes b
ON s.seat_no = b.seat_no
WHERE b.boarding_no IS NULL
-- FIND WHICH SEAT LINE IS FAVORITE
SELECT RIGHT(s.seat_no, 1) AS seat_line, COUNT(*)
FROM seats s
LEFT JOIN boarding_passes b
ON s.seat_no = b.seat_no
GROUP BY seat_line
ORDER BY COUNT(*) DESC
