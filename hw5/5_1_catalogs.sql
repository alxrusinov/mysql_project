SELECT *
FROM catalogs
WHERE id IN (5, 1, 2)
GROUP BY id
ORDER BY IF(id = 5, 5, 2) DESC, IF(id = 2, 0, 2) DESC;