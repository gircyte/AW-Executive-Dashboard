SELECT
  sales_order_header.SalesOrderID,
  CASE
    WHEN sales_territory.Name = 'Northwest' THEN 'United States'
    WHEN sales_territory.Name = 'Central' THEN 'United States'
    WHEN sales_territory.Name = 'Southeast' THEN 'United States'
    WHEN sales_territory.Name = 'Southwest' THEN 'United States'
    WHEN sales_territory.Name = 'Northeast' THEN 'United States'
    ELSE sales_territory.Name
  END AS Country,
  sales_territory.Group AS Region,
  state_province.StateProvinceCode AS StateCode,
  state_province.Name AS State
FROM
  `tc-da-1.adwentureworks_db.salesorderheader` AS sales_order_header
JOIN
  `tc-da-1.adwentureworks_db.salesterritory` AS sales_territory
ON
  sales_order_header.TerritoryID = sales_territory.TerritoryID
JOIN
  `tc-da-1.adwentureworks_db.address` AS address
ON 
  sales_order_header.ShipToAddressID = address.AddressID
JOIN
  `tc-da-1.adwentureworks_db.stateprovince` AS state_province
ON
  address.StateProvinceID = state_province.StateProvinceID
JOIN
  `tc-da-1.adwentureworks_db.countryregion` AS country_region
ON
  state_province.CountryRegionCode = country_region.CountryRegionCode
WHERE
  sales_territory.Name = 'Northwest'
  OR sales_territory.Name = 'Central'
  OR sales_territory.Name = 'Southeast'
  OR sales_territory.Name = 'Southwest'
  OR sales_territory.Name = 'Northeast'