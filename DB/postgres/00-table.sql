CREATE TABLE data_2022_oct (
    event_time TIMESTAMP,
    event_type TEXT,
    product_id BIGINT,
    price NUMERIC(10, 2),
    user_id INTEGER,
    user_session VARCHAR(100)
);
\copy data_2022_oct FROM 'subject/customer/data_2022_oct.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE data_2022_nov (
    event_time TIMESTAMP,
    event_type TEXT,
    product_id BIGINT,
    price NUMERIC(10, 2),
    user_id INTEGER,
    user_session VARCHAR(100)
);
\copy data_2022_nov FROM 'subject/customer/data_2022_nov.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE data_2022_dec (
    event_time TIMESTAMP,
    event_type TEXT,
    product_id BIGINT,
    price NUMERIC(10, 2),
    user_id INTEGER,
    user_session VARCHAR(100)
);
\copy data_2022_dec FROM 'subject/customer/data_2022_dec.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE data_2023_jan (
    event_time TIMESTAMP,
    event_type TEXT,
    product_id BIGINT,
    price NUMERIC(10, 2),
    user_id INTEGER,
    user_session VARCHAR(100)
);
\copy data_2023_jan FROM 'subject/customer/data_2023_jan.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE data_2023_feb (
    event_time TIMESTAMP,
    event_type TEXT,
    product_id BIGINT,
    price NUMERIC(10, 2),
    user_id INTEGER,
    user_session VARCHAR(100)
);
\copy data_2023_feb FROM 'subject/customer/data_2023_feb.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE items (
    product_id INTEGER,
    category_id BIGINT,
    category_code VARCHAR(255),
    brand VARCHAR(50)
);
\copy items FROM 'subject/item/item.csv' DELIMITER ',' CSV HEADER;