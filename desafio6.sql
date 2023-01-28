SELECT
MIN(p.preco) AS 'faturamento_minimo',
MAX(p.preco) AS 'faturamento_maximo',
ROUND(AVG(p.preco), 2) AS 'faturamento_medio',
SUM(p.preco) as 'faturamento_total'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON u.id_plano = p.id;