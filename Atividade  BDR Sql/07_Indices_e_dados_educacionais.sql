– Índices e dados educacionais

Data: 11/11/2022



106. Comando SQL para criação da estrutura da tabela.
Resposta:
create table aluno (
 uf varchar(2),
 municipio varchar(100),
 qt_matricula int
)


107. Comando SQL para criação do índice.
Resposta:
CREATE index idx_alunonome on aluno(municipio);


108. Comando SQL para trazer a quantidade de alunos.
Resposta:
select SUM(qt_matricula)AS 'Quantidade de Alunos' from aluno where municipio = 'Diadema'


109. Nome da Cidade e da UF pesquisada.
Diadema - SP