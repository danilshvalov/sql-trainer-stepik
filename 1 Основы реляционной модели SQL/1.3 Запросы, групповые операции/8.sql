SELECT
    author,
    SUM(price * amount) AS Стоимость
FROM
    book
WHERE
    amount > 3
GROUP BY
    author
HAVING
    Стоимость > 2000
ORDER BY
    Стоимость DESC