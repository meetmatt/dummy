SELECT
  DISTINCT(h.name) AS name
FROM
  human_vacation_dest hvd
  LEFT JOIN human h
    ON h.id = hvd.human_id
  LEFT JOIN vacation_dest vd
      ON vd.id = hvd.destination_id
WHERE hvd.destination_id IN (1, 3);