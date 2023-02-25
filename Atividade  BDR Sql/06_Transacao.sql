Transações
Data: 04/11/2022


96.O que são transações?
Um conjunto de operações que formam um único grupo lógico indivisível de trabalho


97. Explique o comando abaixo?
BEGIN TRANSACTION
update contas set saldo = saldo – 100 where num=1234;
update contas set saldo = saldo + 100 where num=4321;
COMMIT 
Resposta:
Linha 01 – Inicio da transação
Linha 02 e 3 – Dois update que estão dentro de uma transação
Linha 04 – Fechamento da transação com o comando Commit (Fechamento da Transação)


98. Na questão anterior para desfazer a transação deve-se trocar o comando Commit por?
Resposta:
RollBack


99. O que é Banco de Dados deve garantir com relação as transações?
Resposta:
Quando as operações forem realizadas com sucesso elas devem ser gravadas no banco de dados, se ocorrer uma falha não vai afetar o banco e as outras transações


100. Como pode ser finalizado uma transação?
Resposta:
Através do comando Commit


101. O que faz uma transação falhar?
Resposta:
Os erros por falha de hardware, software ou rede, erros no processamento, condições de exeção e falhas com a infraestrutura.


102. Quais são as propriedades de uma transação?
Resposta:
ACID
Atomicidade: indivisível, tudo ou nada;
Consistência: o processamento não pode gerar inconsistências;
Isolamento: Mesmo sendo processadas na mesma hora as transações devem ter resultados devem aparecer de maneira sequencial, e 
Durabilidade: O conteúdo da transação não deve ser afetado por falhas.


103. O que é deadlock?
Resposta:
Quando dois ou mais processos tentam acessar um mesmo objeto aplicando locks. No fim um processo acaba esperando para o outro remover 
o lock para continuar a operação o que cria um loop