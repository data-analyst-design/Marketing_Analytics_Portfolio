SELECT TOP 1000 ProductID,
      ProductName,
      Category,
      Price
FROM PortfolioProject_MarketingAnalytics.dbo.products


-- Create price brackets that will be easier to analyze 
SELECT ProductID,
  ProductName,
  Price,
  CASE WHEN Price < 50 THEN 'Low'
    WHEN Price BETWEEN 50 AND 200 THEN 'Middle'
    ELSE 'High'
END AS PriceCategory
FROM PortfolioProject_MarketingAnalytics.dbo.products