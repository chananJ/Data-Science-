WITH total_stats AS (
    SELECT
        SUM(ct.Points) AS Total_Points,
        SUM(ct.Offensive_Rebounds + ct.Defensive_Rebounds) AS Total_Rebounds,
        SUM(ct.Assists) AS Total_Assists
    FROM clean_table ct
    JOIN clean_combined_data ccd ON ct.Date = ccd.Date
    WHERE ccd.season = 'SEASON_4'
),
stats_value AS (
    SELECT
        Total_Points,
        Total_Rebounds,
        Total_Assists,
        12.3e6 AS Total_Earnings
    FROM total_stats
)
SELECT
    Total_Points,
    Total_Rebounds,
    Total_Assists,
    Total_Earnings as "salary in $ at 2023-2024 season",
    ROUND(Total_Earnings / Total_Points, 0) AS "Point_Value($)",
    ROUND(Total_Earnings / Total_Rebounds,0) AS "Rebound_Value($)",
    ROUND(Total_Earnings / Total_Assists, 0) AS "Assist Value ($)"
FROM stats_value;