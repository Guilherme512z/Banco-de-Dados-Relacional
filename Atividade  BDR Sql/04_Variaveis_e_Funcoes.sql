Data: 16/09/2022

75. Criar uma função 
– f_MesExtenso (@mes int) RETURN varchar(20)
– A função deve receber um valor inteiro (@mes)
– E deve retornar o mês correspondente por extenso
• Exemplo
§ 1 = Jan
§ 2 = Fev
§ 3 = Mar
– Se @mes < 1 ou > 12
• Retornar “Mês Inválido!”
CREATE FUNCTION dbo.f_MesExtenso ( @mes int )
RETURNS varchar(20) 
AS 
BEGIN 
If(@mes = 1)
return '1 - JAN'
ELSE IF (@mes = 2)
 return '2 - FEV'
ELSE IF (@mes = 3)
 return '3 - MAR'
 ELSE IF (@mes = 4)
 return '4 - ABR'
 ELSE IF (@mes = 5)
 return '5 - MAI'
 ELSE IF (@mes = 6)
 return '6 - JUN'
 ELSE IF (@mes = 7)
 return '7 - JUL'
 ELSE IF (@mes = 8)
 return '8 - AGO'
 ELSE IF (@mes = 9)
 return '9 - SET'
 ELSE IF (@mes = 10)
 return '10 - OUT'
 ELSE IF (@mes = 11)
 return '11 - NOV'
 ELSE IF (@mes = 12)
 return '12 - DEZ'
 RETURN 'MÊS INVÁLIDO'
END

76. Criar uma função 
– f_DiaSemanaExtenso (@dia int) RETURN varchar(20)
– A função deve receber um valor inteiro (@dia)
– E deve retornar o dia correspondente por extenso

• Exemplo
§ 1 = Dom
§ 2 = Seg
§ 3 = Ter
– Se @dia < 1 ou > 7
• Retornar “Dia Inválido!”
 
 CREATE FUNCTION dbo.DiaSemanaExtenso ( @dia int )
RETURNS varchar(20) 
AS 
BEGIN 
If(@dia = 1)
return '1 = DOM'
ELSE IF (@dia = 2)
 return '2 = SEG'
 ELSE IF (@dia = 3)
 return '3 = TER'
 ELSE IF (@dia = 4)
 return '4 = QUA'
 ELSE IF (@dia = 5)
 return '5 = QUI'
 ELSE IF (@dia = 6)
 return '6 = SEX'
 ELSE IF (@dia = 7)
 return '7 = SAB'
RETURN 'DIA INVÁLIDO'
END


77. Criar uma função 
– f_ParImpar (@numero int) RETURN varchar(10)
– A função deve receber um valor inteiro (@numero)
– E deve retornar se o numero é “Par” ou “Ímpar”


CREATE FUNCTION dbo.ParImpar ( @numero int )
RETURNS varchar(10) 
AS 
BEGIN 
If(@NUMERO % 2 = 0)
return 'PAR'
ELSE 
 return 'IMPAR'
 
RETURN 'DIA INVÁLIDO'
END
SELECT DBO.ParImpar(2)


78. Criar uma função 
– f_Percentual (@valor decimal(10,2), @perc decimal(5,2)) 
RETURN decimal(10,2)
– Receber dois parâmetros, sendo um valor e um percentual, 
calcular o valor percentual relativo ao valor informado e 
retornar esse valor


 CREATE FUNCTION dbo.Percentual ( @valor decimal(10,2),
@perc decimal(5,2))
RETURNS decimal(10,2) 
AS 
BEGIN 
return @VALOR * (@perc/100)
END
SELECT DBO.Percentual(1000,10)



79. Criar uma função 
– f_UltimoNome (@nome varchar(200) ) RETURN VARCHAR(200)
– Receber um nome e retornar apenas o último nome
– Exemplo:
• João da Silva à retornar o último nome Silva
• Maria Joaquina Santos à retornar o último nome Santos


CREATE FUNCTION f_UltimoNome(@nome varchar(200))
 returns varchar(100)
AS
 return REVERSE(SUBSTRING(REVERSE(@nome), 0, CHARINDEX(' ', REVERSE(@nome))))
END
SELECT dbo.f_UltimoNome('Marcos Vasconcelos de Oliveira');