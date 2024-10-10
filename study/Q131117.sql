SELECT FP.PRODUCT_ID, PRODUCT_NAME, SUM(AMOUNT * PRICE) AS TOTAL_SALES
FROM FOOD_PRODUCT FP JOIN FOOD_ORDER FO ON FP.PRODUCT_ID = FO.PRODUCT_ID
WHERE PRODUCE_DATE LIKE '2022-05%'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, FP.PRODUCT_ID