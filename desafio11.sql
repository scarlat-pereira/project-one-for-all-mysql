SELECT 
nome AS nome_musica,
CASE
	WHEN nome LIKE '%Bard%' THEN REPLACE('The Bard’s Song', 'Bard', 'QA')
    WHEN nome LIKE '%Amar%' THEN REPLACE('O Medo de Amar é o Medo de Ser Livre', 'Amar', 'Code Review')
	WHEN nome LIKE '%Pais' THEN REPLACE('Como Nossos Pais', 'Pais', 'Pull Requests')
	WHEN nome LIKE '%SOUL' THEN REPLACE('BREAK MY SOUL', 'SOUL', 'CODE')
	WHEN nome LIKE '%SUPERSTAR' THEN REPLACE('ALIEN SUPERSTAR', 'SUPERSTAR', 'SUPERDEV')
	ELSE ' '
END AS 'novo_nome'
FROM SpotifyClone.musicas
ORDER BY novo_nome DESC
LIMIT 5;