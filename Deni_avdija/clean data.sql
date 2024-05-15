CREATE TABLE clean_combined_data AS
SELECT *
FROM combined_season_data
WHERE UPPER(Points) != 'DID NOT PLAY' AND UPPER(Points) != 'INACTIVE';
