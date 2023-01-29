SELECT M.nome AS 'nome', COUNT(id_musica) AS 'reproducoes'
FROM SpotifyClone.historicoUsuario AS H
INNER JOIN SpotifyClone.usuarios AS U
ON H.id_usuario = U.id AND (U.id_plano = 1 OR U.id_plano = 3)
INNER JOIN SpotifyClone.musicas AS M
ON H.id_musica = M.id
GROUP BY M.nome
ORDER BY M.nome;