CREATE DATABASE car_prices

CREATE TABLE car_prices (
    year INT,
    brand TEXT,
    model TEXT,
    trim TEXT,
    body text,
    transission VARCHAR(15),
    vin TEXT,
    state VARCHAR(3),
    condition INT,
    odometer INT,
    color TEXT,
    interior TEXT, 
    seller TEXT,
    mmr INT, 
    sellingprice NUMERIC,
    saledate DATE
)

COPY car_prices 
FROM '/Users/macbook/Documents/Data_Analytics/Car_prices/car_prices.csv' 
DELIMITER ',' CSV HEADER;

ALTER TABLE car_prices
ALTER COLUMN state TYPE TEXT

DROP TABLE car_prices

\copy car_prices FROM '/Users/macbook/Documents/Data_Analytics/Car_prices/car_prices.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

SELECT *
FROM car_prices
limit 100

SELECT 
    DISTINCT(brand)
FROM car_prices