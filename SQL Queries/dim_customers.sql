SELECT TOP 15 *
FROM PortfolioProject_MarketingAnalytics.dbo.customers


SELECT TOP 15 *
FROM PortfolioProject_MarketingAnalytics.dbo.geography

-- Join the customers and geography table to enrich customer table with geographic information
SELECT c.*,
	g.Country,
	g.City
FROM PortfolioProject_MarketingAnalytics.dbo.customers AS c
LEFT JOIN PortfolioProject_MarketingAnalytics.dbo.geography AS g
	ON c.GeographyID = g.GeographyID;