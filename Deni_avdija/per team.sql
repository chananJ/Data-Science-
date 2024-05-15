WITH avg_points_opp AS (
    SELECT
        Opponent,
        round(AVG(Points),1) AS Avg_Points_Per_Game
    FROM clean_table
    WHERE Points IS NOT NULL
    GROUP BY Opponent
)
SELECT * FROM avg_points_opp
order by Avg_Points_Per_Game desc;
