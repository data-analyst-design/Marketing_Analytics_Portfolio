SELECT TOP 15 *
FROM PortfolioProject_MarketingAnalytics.dbo.customer_journey;

-- CTE to identify and tag duplicate records
WITH duplicate_records AS (
	SELECT *,
		-- ROW_NUMBER() assigns a unique row number to each record within the partition defined below
		ROW_NUMBER() OVER(
			-- PARTITION BY groups the rows by specific columns which should be unique
			PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
			-- ORDER BY defines how to order the rows within each partition(usually by a unique identifier like JournerID)
			ORDER BY JourneyID) AS row_n
	FROM PortfolioProject_MarketingAnalytics.dbo.customer_journey
)

SELECT *
FROM duplicate_records
WHERE row_n > 1;


-- Outer query selects the final cleaned and standardized data
SELECT JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	Action,
	COALESCE(Duration, Avg_duration) AS Duration -- Replaces missing durations with the average duration for the corresponding dates
FROM 
	(
	-- Subquery to process and clean the data
	SELECT JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		UPPER(Stage) AS Stage, -- Converts the Stage values to UPPERCASE for consistency
		Action,
		Duration,
		AVG(Duration) OVER(PARTITION BY VisitDate) AS Avg_duration, -- Calculates the average duration for each date
		ROW_NUMBER() OVER(
			PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action -- Groups the rows by specific columns which should be unique
			ORDER BY JourneyID -- Defines how to order the rows within each partition
		) AS row_n -- Assigns a row number to each row within the partition to identify duplicates
	FROM PortfolioProject_MarketingAnalytics.dbo.customer_journey
	) AS Subquery
WHERE row_n = 1; -- Keeps only the first occurrence of duplicate group identified in the subquery