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


/*
    columns:
    year
    brand
    model
    trim
    body
    tranmission
    vin
    state
    condition
    odometer
    color
    interior
    seller
    mmr
    sellingprice
    saledate
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