Data: 26/08/2022

create table Departamento (
 idDepto integer not null primary key ,
 nomeDepto varchar(15) not null,
 gerente integer not null,
 divisao varchar(10) not null,
 local varchar(15) not null)
 
 drop table departamento
 
 create table Empregado
(
 IdEmpregado integer NOT NULL,
 NomeEmpregado varchar(20) NOT NULL,
 IdDepto integer NOT NULL,
 Cargo varchar(6) NOT NULL,
 Tempo_Emp integer NULL,
 Salario decimal(10,2) NULL,
 Comissao decimal(10,2) NULL
 PRIMARY KEY (IdEmpregado)
)



33.Listar a coluna Divisao da tabela Departamento.

Select Divisao
From
Departamento

34.Listar a coluna Divisao da tabela Departamento, porém mostre somente linhas 
distintas (sem repetição).

Select
Distinct Divisao
From
Departamento


35.Crie uma cosulta que faça a concatenação entre as colunas Divisao e Local da 
tabela Departamento, para separar as colunas utilize ‘ – ‘. Crie o um alias para coluna 
‘Divisão + Local‘
Select
Distinct Divisao + ' - ' + Local
From
Departamento



36.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela 
Empregado. Crie as seguintes colunas calculadas:

       Descrição             Formúla          Alias
10 % a mais do Salario    Salario * 1.1    ‘Salário Mais 10%’
20 % a mais do Salario    Salario * 1.2    ‘Salário Mais 20%’
10 % a menos do Salario   Salario * 0.9   ‘Salário Menos 10%’
20 % a menos do Salario   Salario * 0.8   ‘Salário Menos 20%’


Select
NomeEmpregado
,Salario
,Salario * 1.1 AS 'Salário Mais 10%'
,Salario * 1.2 AS 'Salário Mais 20%'
,Salario * 0.9 AS 'Salário Menos 10%'
,Salario * 0.8 AS 'Salário Menos 20%'
From
Empregado


37.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela 
Empregado. Crie as seguintes colunas calculadas:


Select
NomeEmpregado
,Salario + Comissao As 'Salário Total'
,(Salario + Comissao) * 12 As 'Salário Total Anual'
,(Salario + Comissao) * .05 As 'Valor Desconto Imposto de 
Renda'
,(Salario + Comissao) * .02 As 'Valor Desconto Plano de Saúde'
,(Salario + Comissao) * .015 As 'Valor Desconto Alimentação'
,(Salario + Comissao) -((Salario + Comissao) * (.05 + .02 +
.015)) As 'Salário Liquido'
,Salario / 30 As 'Salário Diário'
,Salario / 30 / 8 As 'Salário por Hora'
,Salario / 30 / 8 / 60 As 'Salário por Minuto'
,Salario / 30 / 8 / 60 / 60 As 'Salário por Segundo'
From
Empregado


