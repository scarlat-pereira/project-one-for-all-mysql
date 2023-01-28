SELECT m.nome AS 'cancao', COUNT(h.id_musica) AS 'reproducoes'
FROM SpotifyClone.musicas AS m
LEFT JOIN SpotifyClone.historicoUsuario AS h
ON m.id = h.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;