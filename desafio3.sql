SELECT u.nome AS 'usuario', COUNT(h.id_usuario) AS 'qt_de_musicas_ouvidas', ROUND(SUM(duracao_segundos) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.historicoUsuario AS h
INNER JOIN SpotifyClone.usuarios AS u 
ON u.id = h.id_usuario
INNER JOIN SpotifyClone.musicas AS m 
ON m.id = h.id_musica
GROUP BY h.id_usuario 
ORDER BY u.nome;