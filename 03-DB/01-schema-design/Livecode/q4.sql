SELECT tracks.composer, tracks.name, COUNT(*) AS purchases FROM tracks
JOIN invoice_lines ON invoice_lines.track_id = tracks.id
GROUP BY tracks.id
HAVING purchases >= 2
ORDER BY purchases DESC
#  WHERE is for individual rows, HAVING for aggregations
