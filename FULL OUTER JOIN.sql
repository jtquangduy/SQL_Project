SELECT *
FROM boarding_passes b
FULL OUTER JOIN tickets t
ON b.ticket_no = t.ticket_no

SELECT COUNT(*)
FROM boarding_passes b
FULL OUTER JOIN tickets t
ON b.ticket_no = t.ticket_no
WHERE b.ticket_no IS null