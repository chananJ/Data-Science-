SELECT
    Opponent,
    Date,
    Points,
    ROUND(AVG(Points) OVER (ORDER BY Date ROWS BETWEEN 4 PRECEDING AND CURRENT ROW), 1)
	AS Rolling_Avg_Points,
    CASE WHEN Points > AVG(Points) OVER (ORDER BY Date ROWS BETWEEN 4 PRECEDING AND CURRENT ROW)
	THEN 'Yes' ELSE 'No' END AS Scored_More_Than_Avg
FROM clean_table;
