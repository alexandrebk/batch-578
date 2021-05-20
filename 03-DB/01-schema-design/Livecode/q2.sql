SELECT tracks.name, tracks.composer FROM tracks
JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
JOIN playlists ON playlist_tracks.playlist_id = playlists.id
WHERE playlists.name = "Classical";
