SELECT
  sales_order_header.SalesOrderID,
  sales_order_header.CustomerID,
  DATE(CAST(sales_order_header.OrderDate AS DATETIME)) AS OrderDate,
  CASE
    WHEN sales_order_header.SalesPersonID IS NULL THEN 'Online'
    ELSE 'Store'
  END AS OrderType
FROM
  `tc-da-1.adwentureworks_db.salesorderheader` AS sales_order_header
ORDER BY
  sales_order_header.SalesOrderID;