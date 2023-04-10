SELECT transaction_date, primary_stockno, secondary_stockno, store, region, district, store_city, store_state_alpha, store_zip, longitude, latitude
FROM sold_with LEFT JOIN stores USING(store, div)
WHERE region LIKE '001';

SELECT DISTINCT(region)
FROM stores;

-- find a way to merge products table with sold_with table
SELECT*
FROM products;



-- test merge
SELECT transaction_date, primary_stockno, p1.department AS primary_department, p1.department_name AS primary_department_name,
	   secondary_stockno, p2.department AS secondary_department, p2.department_name AS secondary_department_name, store, region, district, store_city,
	   store_state_alpha, store_zip, longitude, latitude
FROM sold_with LEFT JOIN products AS p1 ON sold_with.primary_stockno = p1.stockno
			   LEFT JOIN products AS p2 ON sold_with.secondary_stockno = p2.stockno
			   LEFT JOIN stores USING(store);

SELECT *
FROM products;

SELECT*
FROM store_sales;