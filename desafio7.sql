SELECT A_R.nome AS 'artista', A_L.nome AS 'album', COUNT(S_A.id_artista) AS 'seguidores'
FROM SpotifyClone.usuario_segue_artista AS S_A
INNER JOIN SpotifyClone.albuns AS A_L 
ON S_A.id_artista = A_L.id_artista
INNER JOIN SpotifyClone.artistas AS A_R
ON S_A.id_artista = A_R.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;