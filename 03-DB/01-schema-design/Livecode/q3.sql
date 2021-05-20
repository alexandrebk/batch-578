SELECT artists.name, COUNT(*) as count FROM playlist_tracks
JOIN tracks ON playlist_tracks.track_id = tracks.id
JOIN albums ON tracks.album_id = albums.id
JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY count DESC
LIMIT 10;
