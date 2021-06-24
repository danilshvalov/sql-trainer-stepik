SELECT
    author,
    ROUND(SUM(price * amount), 2) AS 'Стоимость',
    ROUND(SUM(price * amount) / 1.18 * 0.18, 2) AS 'НДС',
    ROUND(SUM(price * amount) / 1.18, 2) AS 'Стоимость_без_НДС'
FROM
    book
GROUP BY
    author