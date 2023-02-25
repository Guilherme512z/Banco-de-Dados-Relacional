
Data: 19/08/2022

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

 
 insert Departamento (iddepto, nomedepto, gerente, 
divisao, local) 
 values(1,'RH', 1, 'Adm', 'Diadema') 
 insert Departamento (iddepto, nomedepto, gerente, 
divisao, local) 
 values(2,'C.Rec.', 3, 'Adm', 'Diadema') 
 insert Departamento (iddepto, nomedepto, gerente, 
divisao, local) 
 values(3,'CP', 2, 'Adm', 'Diadema') 
 
 insert into Empregado (idempregado, nomeempregado, 
iddepto, cargo, tempo_emp, salario, comissao)
values (1, 'Marcos', 1, 'Prof', 10, 1800.00, 10)
insert into Empregado (idempregado, nomeempregado, 
iddepto, cargo, tempo_emp, salario, comissao)
values (2, 'Maria', 1, 'Aux.', 1, 1500.00, 10)
insert into Empregado (idempregado, nomeempregado, 
iddepto, cargo, tempo_emp, salario, comissao)
values (3, 'Juliana', 2, 'Aux.', 1, 1500.00, 10)

1.Lista Nome e salário de todos os Empregados.
SELECT NomeEmpregado,Salario From Empregado

2.Lista Nome e Local de todos os Departamentos
Select NomeDepto,Local From Departamento

3.Lista Nome, salário e comissão dos Empregados 
com salario maior que 1.800.

Select NomeEmpregado,Salario,Comissao 
From Empregado Where Salario>1800

4. Lista Nome, divisão e Local dos 
Departamentos da divisão SUL. 

Select NomeDepto,Divisao, Local From 
Departamento Where Divisao='SUL'

5. Lista Nome, departamento, 
salario e cargo dos Empregados 
com cargo GER e salário menor que 
2.000.

Select NomeEmpregado,IdDepto,Salario,C
argo From Empregado Where 
Cargo='Ger' and Salario < 2000

6. Lista todos os dados dos Empregados com 
cargo ATEND ou salário entre 1.800 e 2.000.

Select * From Empregado Where 
Cargo='Atend' Or Salario between 1800 and 
2000

7. Lista Nome, Salário, comissão e remuneração 
total (Salário + Comissão) de todos os 
empregados. 

Select NomeEmpregado, Salario, Comissao, 
Salario + IsNULL(Comissao,0) as 
RemuneracaoTotal From Empregado

8. Lista Nome, Salário, comissão e remuneração 
total (Salário + Comissão) de todos os 
empregados com salário maior que 2.000 ou 
comissão maior que 700.

Select NomeEmpregado, Salario, Comissao, Salario 
+ IsNULL(Comissao,0) as RemuneracaoTotal From 
Empregado Where Salario > 2000 or Comissao > 
700

9. Lista Nome, Salário, comissão e remuneração 
total de todos os empregados com remuneração 
total menor que 1.800.

Select NomeEmpregado,Salario,Comissao, 
Salario + IsNULL(Comissao,0) as 
RemuneracaoTotal From Empregado Where 
Salario + IsNULL(Comissao,0) < 1800


10. Lista Nome e cargo dos Empregados que 
o nome comece com a letra D.
Select 
NomeEmpregado,
Cargo 
From 
Empregado 
Where 
NomeEmpregado like 'D%'

11. Lista Nome e cargo dos Empregados que 
o nome tenha N como terceira letra.

Select NomeEmpregado,Cargo From 
Empregado Where NomeEmpregado like 
'__N%'

12. Lista Nome e cargo dos Empregados que 
o nome tenha N (maiúscula ou minúscula) 
como terceira letra

Select NomeEmpregado,Cargo From 
Empregado Where NomeEmpregado like 
'__N%'

13.Lista Nome, Salário, comissão e remuneração 
total (Salário + Comissão) de todos os empregados 
com salário maior que 2.000 ou comissão maior 
que 800. Apresenta o resultado classificado em 
ordem alfabética de nome.

Select NomeEmpregado,Salario,Comissao, Salario + 
IsNULL(Comissao,0) as RemuneracaoTotal From 
Empregado Where Salario > 2000 or Comissao > 
800 Order by NomeEmpregado

14. Lista Nome, Salário, comissão e 
remuneração total (Salário + Comissão) de 
todos os empregados com salário maior que 
2.000 ou comissão maior que 800. Apresenta 
o resultado classificado em ordem crescente 
de salario.

Select NomeEmpregado,Salario,Comissao, Salario + 
IsNULL(Comissao,0) as RemuneracaoTotal From 
Empregado Where Salario > 2000 or Comissao > 
800 Order by salario


15.Lista Nome, Salário, comissão e remuneração 
total (Salário + Comissão) de todos os empregados 
com salário maior que 2.000 ou comissão maior 
que 800. Apresenta o resultado classificado em 
ordem decrescente de salario.

Select NomeEmpregado,Salario,Comissao, Salario + 
IsNULL(Comissao,0) as RemuneracaoTotal From 
Empregado Where Salario > 2000 or Comissao > 
800 Order by salario desc


16.Lista Nome, Salário, comissão e remuneração 
total (Salário + Comissão) de todos os empregados 
com salário maior que 2.000 ou comissão maior 
que 800. Apresenta o resultado classificado em 
ordem crescente de remuneração total

Select NomeEmpregado,Salario,Comissao, Salario + 
IsNULL(Comissao,0) as RemuneracaoTotal From 
Empregado Where Salario > 2000 or Comissao > 
800 Order by 3


17.Lista Nome, Salário, comissão e remuneração 
total de todos os empregados com salário maior 
que 2.000 ou comissão maior que 800. Apresenta o 
resultado classificado em ordem crescente de 
departamento e em cada departamento, em ordem 
decrescente de salario.

Select NomeEmpregado,Salario,Comissao, Salario 
+ IsNULL(Comissao,0) as RemuneracaoTotal From 
Empregado Where Salario > 2000 or Comissao > 
800 Order by IdDepto, Salario Desc

18. Lista o maior salário, o menor salário e 
a média dos salários de todos os 
Empregados.

Select Max(Salario) as MaiorSalario, 
Min(Salario) as MenorSalario, Avg(Salario) as 
MediaSalario From Empregado

19. Lista o maior salário, o menor salário, a 
média dos salários e a quantidade dos 
Empregados com cargo GER ou VENDAS.

Select Max(Salario) as MaiorSalario, 
Min(Salario) as MenorSalario, Avg(Salario) as 
MediaSalario, Count(*) as TotalEmpregado 
From Empregado Where Cargo In 
('GER','VENDAS')


20. Lista o cargo, o maior salário, o menor 
salário, a média dos salários e a quantidade 
dos Empregados para cada cargo


Select Cargo, Max(Salario) as MaiorSalario,
Min(Salario) as MenorSalario, Avg(Salario) as
MediaSalario, Count(*) as TotalEmpregado 
From Empregado Group by Cargo


21. Lista o departamento, o maior salário, 
o menor salário, a média dos salários e a 
quantidade dos Empregados para cada 
departamento


Select IdDepto, Max(Salario) as
MaiorSalario, Min(Salario) as MenorSalario,
Avg(Salario) as MediaSalario, Count(*) as
TotalEmpregado From Empregado Group by
IdDepto

22. Lista o departamento, o maior salário, 
o menor salário, a média dos salários e a 
quantidade dos Empregados para cada 
departamento, considerando somente 
empregados com salário maior que 1.800

Select IdDepto, Max(Salario) as
MaiorSalario, Min(Salario) as MenorSalario,
Avg(Salario) as MediaSalario, Count(*) as
TotalEmpregado From Empregado Where
Salario > 1800 Group by IdDepto


23. Lista o departamento, o cargo, o maior 
salário, o menor salário, a média dos salários 
e a quantidade dos Empregados para cada 
cargo dentro de cada departamento


Select IdDepto, Cargo, Max(Salario) as
MaiorSalario, Min(Salario) as MenorSalario,
Avg(Salario) as MediaSalario, Count(*) as
TotalEmpregado From Empregado Group by
IdDepto, Cargo


24. Lista o departamento, o maior salário, 
o menor salário, a média dos salários e a 
quantidade dos Empregados, apresentando 
somente departamentos que tenham pelo 
menos 5 empregados. 


Select IdDepto, Max(Salario) as
MaiorSalario, Min(Salario) as MenorSalario,
Avg(Salario) as MediaSalario, Count(*) as
TotalEmpregado From Empregado Group by
IdDepto Having Count(*)>4


25. Lista o departamento, o maior salário, o menor salário, 
a média dos salários e a quantidade dos Empregados com 
salário maior que 1.400, apresentando somente 
departamentos que tenham pelo menos 3 empregados 
nessa condição.


Select IdDepto, Max(Salario) as MaiorSalario,
Min(Salario) as MenorSalario, Avg(Salario) as
MediaSalario, Count(*) as TotalEmpregado From
Empregado Where Salario > 1400 Group by IdDepto 
Having Count(*)>2


26. Lista todos os dados dos Empregados 
que não tem comissão (ausência de valor).

Select * From Empregado Where Comissao Is
NULL


27. Lista nome e salário dos empregados 
com salário menor que a média dos salários

Select NomeEmpregado,Salario From
Empregado Where Salario < (Select
Avg(Salario) From Empregado)



28. Lista os códigos de departamento que 
tenham empregados com salário maior que 
a média de todos os salários (sem repetir 
códigos de departamento).

Select Distinct IdDepto From Empregado 
Where Salario > (Select Avg(Salario) From
Empregado)


 29. Lista nome e salário dos empregados 
que tenham o menor salário em seu 
departamento

Select NomeEmpregado, Salario From
Empregado e Where Salario =(Select
Min(x.Salario) From Empregado x Where
x.IdDepto = e.IdDepto)


 30. Lista quantos empregados em cada 
departamento tem salário maior que a 
média de todos os salários


Select IdDepto, Count(*) as TotalEmpregado 
From Empregado e Where Salario >(Select
Avg(Salario) From Empregado ) Group by
IdDepto