SELECT
    author,
    SUM(price * amount) AS Стоимость
FROM
    book
WHERE
    title NOT IN ('Идиот', 'Белая гвардия')
GROUP BY
    author
HAVING
    Стоимость > 5000
ORDER BY
    Стоимость DESC