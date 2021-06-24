UPDATE
    book
SET
    buy = IF(buy > amount, amount, buy),
    price = IF(buy = 0, 0.9 * price, price)