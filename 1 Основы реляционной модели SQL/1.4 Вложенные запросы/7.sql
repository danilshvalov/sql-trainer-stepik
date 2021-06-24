SELECT
    title,
    author,
    LENGTH(title) AS Длина,
    (
        (
            SELECT
                MAX(LENGTH(title))
            FROM
                book
        ) - LENGTH(title)
    ) AS Не_хватает_букв
FROM
    book
WHERE
    LENGTH(title) <> (
        SELECT
            MAX(LENGTH(title))
        FROM
            book
    )