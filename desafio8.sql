SELECT A_R.nome AS 'artista', A_L.nome AS 'album'
FROM SpotifyClone.artistas AS A_R
INNER JOIN SpotifyClone.albuns AS A_L
ON A_R.id = A_L.id_artista
WHERE A_R.nome = 'Elis Regina'
ORDER BY album;