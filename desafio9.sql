SELECT COUNT(H.id_musica) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historicoUsuario AS H
INNER JOIN SpotifyClone.usuarios AS U
ON H.id_usuario = U.id
WHERE U.nome = 'Barbara Liskov';