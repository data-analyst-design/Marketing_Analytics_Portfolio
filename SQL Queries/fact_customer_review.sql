SELECT *
FROM PortfolioProject_MarketingAnalytics.dbo.customer_reviews;


SELECT ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating,
	TRIM(REPLACE(ReviewText, '  ', ' ')) AS ReviewText
FROM PortfolioProject_MarketingAnalytics.dbo.customer_reviews;


