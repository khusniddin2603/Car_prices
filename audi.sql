SELECT *
FROM car_prices
WHERE brand='Audi'

--see count of each model
SELECT 
    model,
    COUNT(brand) AS number_of_cars,
    AVG(sellingprice) AS average_price
FROM car_prices
WHERE brand='Audi'
GROUP BY model
ORDER BY number_of_cars DESC
LIMIT 10;

/*

    put milage on different categories
    set good, not bad, bad categories
    only audi cars
    order from highest ot lowest

*/

SELECT
    --COUNT(model) AS count_of_cars,
    model,
    sellingprice,
    CASE 
        WHEN odometer >= 20000 THEN 'BAD'
        WHEN odometer <= 5000 THEN 'GOOD'
        ELSE 'NOT_BAD'
    END AS milage_condition
FROM car_prices
WHERE brand='Audi'
--GROUP BY milage_condition


-- creating a table for audi cars only

CREATE TABLE audi_cars AS
    SELECT *
    FROM car_prices
    WHERE brand='Audi'

SELECT *
FROM audi_cars
LIMIT 100


--WHO SOLD THE MOST NUMBER OF SEDAN CARS, GIVE THE SELLER AND THE STATE, TOP10

SELECT
    state,
    COUNT(seller) AS num_sold
FROM audi_cars
WHERE seller IN(
SELECT 
    seller
FROM audi_cars
WHERE body='Sedan'
)
GROUP BY state





