SELECT
  sales_order_detail.SalesOrderID,
  product_cat.Name AS Category,
  product_subcat.Name AS Subcategory,
  SUM(sales_order_detail.OrderQty) AS OrderQty,
  SUM(sales_order_detail.LineTotal) AS SubcategoryRevenue,
  SUM((sales_order_detail.UnitPrice - product_cost_history.StandardCost) * sales_order_detail.OrderQty) AS TotalProfit
FROM
  `tc-da-1.adwentureworks_db.salesorderdetail` AS sales_order_detail
JOIN
  `tc-da-1.adwentureworks_db.specialofferproduct` AS special_offer_product
ON
  sales_order_detail.ProductID = special_offer_product.ProductID
  AND sales_order_detail.SpecialOfferID = special_offer_product.SpecialOfferID
JOIN
  `tc-da-1.adwentureworks_db.product` AS product
ON
  special_offer_product.ProductID = product.ProductID
JOIN
  `tc-da-1.adwentureworks_db.productsubcategory` AS product_subcat
ON
  product.ProductSubcategoryID = product_subcat.ProductSubcategoryID
JOIN
  `tc-da-1.adwentureworks_db.productcategory` AS product_cat
ON
  product_subcat.ProductCategoryID = product_cat.ProductCategoryID
LEFT JOIN
  `tc-da-1.adwentureworks_db.productcosthistory` product_cost_history
ON
  product.ProductID = product_cost_history.ProductID
  AND CAST(sales_order_detail.ModifiedDate AS DATE) BETWEEN product_cost_history.StartDate
  AND IFNULL(product_cost_history.EndDate, CURRENT_DATE())
GROUP BY
  sales_order_detail.SalesOrderID,
  product_cat.Name,
  product_subcat.Name