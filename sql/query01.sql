SELECT
  h.name,
  GROUP_CONCAT(vd.name) AS destinations
FROM
  human_vacation_dest hvd
  LEFT JOIN human h
    ON h.id = hvd.human_id
  LEFT JOIN vacation_dest vd
    ON vd.id = hvd.destination_id
GROUP BY hvd.human_id