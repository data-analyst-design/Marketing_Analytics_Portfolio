SELECT *
FROM PortfolioProject_MarketingAnalytics.dbo.engagement_data;

SELECT UPPER(LEFT(ContentType, 1)) + LOWER(SUBSTRING(ContentType, 2, LEN(ContentType)))
FROM PortfolioProject_MarketingAnalytics.dbo.engagement_data;

SELECT EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,
	SUBSTRING(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) + 1, LEN(ViewsClicksCombined)) AS Clicks,
	Likes,
	FORMAT(CONVERT(DATE, EngagementDate), 'dd/MM/yyyy') AS EngagementDate
FROM PortfolioProject_MarketingAnalytics.dbo.engagement_data
WHERE ContentType != 'newsletter';