WITH team_stats AS (
    SELECT
        Opponent,
        ROUND(AVG(Points), 1) AS Avg_Points_Per_Game,
        ROUND(AVG(Offensive_Rebounds + Defensive_Rebounds), 1) AS Avg_Rebounds_Per_Game,
        ROUND(AVG(Turnovers), 1) AS Avg_Turnovers_Per_Game,
        ROUND(AVG(Assists), 1) AS Avg_Assists_Per_Game,
        ROUND(AVG(Plus_Minus), 1) AS Avg_Plus_Minus_Per_Game
    FROM clean_table
    WHERE Points IS NOT NULL
          AND Offensive_Rebounds IS NOT NULL
          AND Defensive_Rebounds IS NOT NULL
          AND Turnovers IS NOT NULL
          AND Assists IS NOT NULL
          AND Plus_Minus IS NOT NULL
    GROUP BY Opponent
)
SELECT * FROM team_stats
ORDER BY Avg_Points_Per_Game DESC;
