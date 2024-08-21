CREATE TABLE tmp_table AS
SELECT
    c.event_time,
    c.event_type,
    c.price,
    c.user_id,
    c.user_session,
    i.product_id,
    i.category_id,
    i.category_code,
    i.brand
FROM
    items i
LEFT JOIN
    customers c
ON
    i.product_id = c.product_id;

DROP TABLE customers;
ALTER TABLE tmp_table RENAME TO customers;