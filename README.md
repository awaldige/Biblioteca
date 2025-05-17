📚 Banco de Dados: biblioteca
Este projeto apresenta a modelagem e criação de um banco de dados relacional para gerenciamento de uma biblioteca, utilizando MySQL. O banco permite o controle de livros, autores, editoras, gêneros, idiomas e exemplares.

🖼 Diagrama Entidade-Relacionamento (ER)
O projeto inclui um Diagrama ER, que representa graficamente as entidades, atributos e relacionamentos do banco de dados.
Você pode visualizar o diagrama no arquivo: diagrama-er.png

🗂 Estrutura do Banco de Dados
O banco de dados se chama biblioteca e é composto pelas seguintes tabelas:

1. Autores
Armazena informações sobre os autores dos livros.

id (PK): Identificador único.

nome: Nome completo do autor.

nacionalidade: País de origem.

2. Editoras
Registra os dados das editoras.

id (PK): Identificador único.

nome: Nome da editora.

site: Site oficial.

3. Generos
Define os gêneros literários dos livros.

id (PK): Identificador único.

nome: Nome do gênero (ex: Romance, Ficção, Aventura).

4. Idiomas
Lista os idiomas disponíveis nos livros.

id (PK): Identificador único.

nome: Idioma do livro (ex: Português, Inglês, Espanhol).

5. Livros
Tabela principal que armazena as obras literárias.

id (PK): Identificador único do livro.

titulo: Título da obra.

id_autor (FK): Autor relacionado.

id_editora (FK): Editora relacionada.

id_genero (FK): Gênero do livro.

id_idioma (FK): Idioma do livro.

ano_publicacao: Ano de publicação.

isbn: Número padrão internacional de livro.

paginas: Número total de páginas.

6. Exemplares
Controla os exemplares físicos de cada livro.

id (PK): Identificador único do exemplar.

id_livro (FK): Livro relacionado.

codigo_exemplar: Código único de controle do exemplar.

status: Situação atual (disponível, emprestado, reservado, danificado).

🔗 Relacionamentos
Um autor pode escrever vários livros.

Uma editora pode publicar vários livros.

Um gênero pode agrupar vários livros.

Um idioma pode estar presente em vários livros.

Um livro pode ter múltiplos exemplares físicos.

💾 Script SQL
O script SQL completo de criação das tabelas está disponível no arquivo livraria.sql.

🚀 Como usar
Abra o MySQL Workbench.

Execute o script livraria.sql.

O banco será criado com todas as tabelas e relacionamentos.

📌 Observações
Este projeto é um exemplo educacional de modelagem de banco de dados.

Pode ser expandido com funcionalidades como: usuários, empréstimos, reservas e histórico de movimentações.

Desenvolvido como exercício de prática em SQL e modelagem de dados.# biblioteca
