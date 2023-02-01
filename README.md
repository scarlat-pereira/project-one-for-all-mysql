Este projeto contém os requisitos realizados por _[Scarlat Pereira](https://www.linkedin.com/in/scarlatpereira/)_ enquanto estudava na [Trybe](https://www.betrybe.com/) :rocket:

# Project MySQL  - One For All

Neste projeto utilizei uma tabela inspirada no Banco de Dados do Spotify (SpotifyClone) para revisar e e consolidar conceitos 
de normalização e execução de queries com o intuito de encontrar as informações solicitadas.

## Diagrama do Banco de Dados SpotifyClone

![diagrama_one_for_all](https://user-images.githubusercontent.com/108958216/216146242-f5ccabc5-3bbd-4fce-9e6b-a15f5b89a5ea.png)

---

## Demo

![Gravação de tela de 30-01-2023 12_52_06](https://user-images.githubusercontent.com/108958216/216149978-ea667966-61b5-43b3-b95d-5c423734646c.gif)

---

## Instalação do projeto localmente:

 Após cada um dos passos, haverá um exemplo do comando a ser digitado para fazer o que está sendo pedido, caso tenha dificuldades e o exemplo não seja suficiente, não hesite em me contatar em engcivil.scarlat@gmail.com
 
 1. Abra o terminal e crie um diretório no local de sua preferência com o comando **mkdir**:
```javascript
  mkdir projetos
```

2. Entre no diretório que acabou de criar e depois clone o projeto:
```javascript
  cd projetos
  git clone git@github.com:scarlat-pereira/project-one-for-all-mysql.git
```

3. Acesse o diretório do projeto e depois utilize o comando **npm i** para instalar todas as dependências necessárias:
```javascript
  cd project-mysql-one-for-all
  npm i
```

- ✨ **Dica:** Caso queira utilizar _Docker_ para rodar os testes localmente e validar as queries criadas, basta executar o comando:
```javascript
docker run -p 3306:3306 --name mysql_57 -e MYSQL_ROOT_PASSWORD=1234 -d mysql:5.7 mysqld --default-authentication-plugin=mysql_native_password
```
- Depois de usar o comando acima, agora basta executar os testes digitando no terminal:
```javascript
MYSQL_USER=root MYSQL_PASSWORD=1234 HOSTNAME=localhost npm test
```

## Habilidades Desenvolvidas

Neste projeto, desenvolvi as seguintes habilidades:

 - Normalizar a tabela SpotifyCone (para a 3ª Forma Normal), criar o schema no banco de dados local e populá-lo;
 - Realizar os desafios no banco normalizado e populado.

 ## Escopo do Projeto
 
 **Desafio 1**
 
 - Crie um banco com o nome de SpotifyClone.
 - Providencie as queries necessárias para criar tabelas normalizadas que atendam aos requisitos descritos na seção abaixo;
 - Providencie as queries necessárias para popular as tabelas de acordo com os dados listados na seção abaixo;
 - Ajuste o arquivo de configurações desafio1.json, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio.
 
 **Desafio 2**
 
 - Crie uma QUERY que exiba três colunas:

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

 **Desafio 3**
 
 - Crie uma QUERY que deverá ter apenas três colunas:

1. A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "qtde_musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

3. A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

 **Desafio 4**
 
 - Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas no ano do ano de 2021, se baseando na data mais recente no histórico de reprodução.

1. A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

2. A segunda coluna deve ter o alias "status_usuario" e exibir se a pessoa usuária está ativa ou inativa.
 
 **Desafio 5**
 
 - Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma QUERY que possua duas colunas:

1. A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.

 **Desafio 6**
 
 - Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma QUERY que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.

 **Desafio 7**
 
 - Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:

1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".

2. A segunda coluna deve exibir o nome do álbum, com o alias "album".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".

 **Desafio 8**
 
 - Mostre uma relação dos álbuns produzidos por um artista específico, neste caso "Elis Regina". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "artista".

2. O nome do álbum, com o alias "album".

 **Desafio 9**
 
 - Crie uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico do usuário "Barbara Liskov" e a consulta deve retornar a seguinte coluna:

1. O valor da quantidade, com o alias "quantidade_musicas_no_historico".

 **Desafio 10**
 
 - Crie uma QUERY que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal de acordo com os detalhes a seguir:

1. A primeira coluna deve exibir o nome da canção, com o alias "nome";

2. A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes";

3. Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

 **Desafio 11**
 
 - Crie uma QUERY que altere o nome de algumas músicas e as ordene em ordem alfabética com as colunas abaixo se baseando nos seguintes critérios:

1. O nome da música em seu estado normal com o alias nome_musica

2. O nome da música atualizado com o alias novo_nome

Critérios

 - Trocar a palavra "Bard" do nome da música por "QA"
 - Trocar a palavra "Amar" do nome da música por "Code Review"
 - Trocar a palavra "Pais" no final do nome da música por "Pull Requests"
 - Trocar a palavra "SOUL" no final do nome da música por "CODE"
 - Trocar a palavra "SUPERSTAR" no final do nome da música por "SUPERDEV"
