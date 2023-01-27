SELECT COUNT(m.id) AS 'cancoes', COUNT(DISTINCT ar.id) AS 'artistas', COUNT(DISTINCT a.id) AS 'albuns'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.albuns AS a
ON m.id_album = a.id
INNER JOIN SpotifyClone.artistas AS ar
ON ar.id = a.id_artista;