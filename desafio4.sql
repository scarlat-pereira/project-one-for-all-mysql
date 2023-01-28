SELECT u.nome AS 'usuario', IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario' 
FROM SpotifyClone.usuarios AS u
LEFT JOIN SpotifyClone.historicoUsuario AS h
ON u.id = h.id_usuario
GROUP BY u.nome
ORDER BY u.nome;