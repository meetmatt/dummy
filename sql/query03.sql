SELECT
  h.name
FROM human_vacation_dest hvd1
  INNER JOIN human_vacation_dest hvd2
    ON hvd1.human_id = hvd2.human_id
  LEFT JOIN human h
    ON h.id = hvd1.human_id
WHERE hvd1.destination_id = 1
  AND hvd2.destination_id = 3;
