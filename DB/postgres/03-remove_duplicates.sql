CREATE TABLE tmp_table AS
SELECT *
FROM (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY event_type, product_id, price, user_id, user_session ORDER BY event_time) AS rn
    FROM customers
) subquery
WHERE rn = 1;

DROP TABLE customers;
ALTER TABLE tmp_table RENAME TO customers;


CREATE TABLE tmp_items AS
SELECT *
FROM (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY product_id
            ORDER BY 
                CASE WHEN category_id IS NOT NULL THEN 1 ELSE 2 END,
                CASE WHEN category_code IS NOT NULL THEN 1 ELSE 2 END,
                CASE WHEN brand IS NOT NULL THEN 1 ELSE 2 END
        ) AS rn
    FROM items
) subquery
WHERE rn = 1;

DROP TABLE items;
ALTER TABLE tmp_items RENAME TO items;