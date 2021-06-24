CREATE TABLE ordering AS
SELECT
    author,
    title,
    (
        SELECT
            SUM(amount) / COUNT(amount)
        FROM
            book
    ) AS amount
FROM
    book
WHERE
    amount < (
        SELECT
            SUM(amount) / COUNT(amount)
        FROM
            book
    )