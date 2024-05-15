UPDATE combined_season_data
SET 
    Rank = NULL,
    Season_Game = NULL,
    Date = NULL,
    Age = NULL,
    Team = NULL,
    "Unnamed: 5" = NULL,
    Opponent = NULL,
    difference = NULL,
    Games_Started = NULL,
    Minutes_Played = NULL,
    Field_Goals = NULL,
    Field_Goal_Attempts = NULL,
    Field_Goal_Percentage = NULL,
    Three_Point_Field_Goals = NULL,
    Three_Point_Field_Goal_Attempts = NULL,
    Three_Point_Field_Goal_Percentage = NULL,
    Free_Throws = NULL,
    Free_Throw_Attempts = NULL,
    Free_Throw_Percentage = NULL,
    Offensive_Rebounds = NULL,
    Defensive_Rebounds = NULL,
    Total_Rebounds = NULL,
    Assists = NULL,
    Steals = NULL,
    Blocks = NULL,
    Turnovers = NULL,
    Personal_Fouls = NULL,
    Points = NULL,
    Game_Score = NULL,
    Plus_Minus = NULL
WHERE Points = 'Inactive' OR Points = 'Did not play' OR Points !~ '^\d+(\.\d+)?$';