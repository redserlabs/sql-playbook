-- Source: DataLemur (Interview)
-- Difficulty: Medium
-- Title: Top 5 Artists (Spotify)
-- Link: https://datalemur.com/questions/top-fans-rank
-- Concepts: CTE, JOIN, GROUP BY, COUNT, DENSE_RANK, window function

WITH top_10_cte AS (
  SELECT
    artists.artist_name,
    DENSE_RANK() OVER (
      ORDER BY COUNT(songs.song_id) DESC
    ) AS artist_rank
  FROM artists
  INNER JOIN songs
    ON artists.artist_id = songs.artist_id
  INNER JOIN global_song_rank AS ranking
    ON songs.song_id = ranking.song_id
  WHERE ranking.rank <= 10
  GROUP BY artists.artist_name
)

SELECT artist_name, artist_rank
FROM top_10_cte
WHERE artist_rank <= 5;