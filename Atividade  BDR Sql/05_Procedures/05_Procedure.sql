Data: 07/10/2022 Procedures

82.
CREATE PROCEDURE DepartamentoUpdate 
( @idDepto int, 
 @NomeDepto varchar(15),
 @Gerente int, 
 @Divisao varchar(10), 
 @Local varchar(15)
)
AS
UPDATE
 Departamento
SET
 idDepto = @idDepto,
 NomeDepto = @NomeDepto,
 Gerente = @Gerente,
 Divisao = @Divisao, 
 Local = @Local
WHERE 
 IdDepto = @idDepto
 EXECUTE DepartamentoUpdate 1,'RH', 1, Marcos, 'Diadema'")
 
 
 
 83.
CREATE PROCEDURE DepartamentoDelete
( @idDepto int,
@TotalDepartamentos int OUTPUT
)
AS
DELETE FROM Departamento WHERE idDepto = @idDepto
SELECT @TotalDepartamentos = Count(*) FROM Departamento
Declare @TotalDepartamentos int
EXECUTE DepartamentoDelete 3, @TotalDepartamentos output
SELECT @TotalDepartamentos 'TOTAL DOS DEPTO')
 
 
 84.
CREATE PROCEDURE EmpregadoInsert
( @IdEmpregado int,
@NomeEmpregado varchar(20),
@IdDepto int,
@Cargo varchar(6),
@Tempo_Emp int,
@Salario decimal(10,2),
@Comissao decimal(10,2),
@TotalEmpregados INT OUTPUT
)
AS
INSERT INTO Empregado(
IdEmpregado,
NomeEmpregado ,
IdDepto,
Cargo,
Tempo_Emp,
Salario,
Comissao
)
VALUES( @IdEmpregado,
@NomeEmpregado ,
       @IdDepto,
@Cargo,
@Tempo_Emp,
@Salario,
@Comissao
)
SELECT @TotalEmpregados = Count(*) FROM Empregado



85. 
CREATE PROCEDURE EmpregadoUpdate
( @IdEmpregado int, 
 @NomeEmpregado varchar(20), 
 @IdDepto int, 
 @Cargo varchar(6), 
 @Tempo_Emp int, 
 @Salario decimal(10,2), 
 @Comissao decimal(10,2)
)
AS
UPDATE
 Empregado
SET
 IdEmpregado = @IdEmpregado,
 NomeEmpregado = @NomeEmpregado,
 IdDepto = @IdDepto,
 Cargo = @Cargo,
 Tempo_Emp = @Tempo_Emp,
 Salario = @Salario,
 comissao = @Comissao
WHERE IdEmpregado = @IdEmpregado
EXECUTE EmpregadoUpdate 4, 'Marcos', 2, 'Gerente', 15, 2600.00, 250.00



86.
CREATE PROCEDURE EmpregadoDelete
( @IdEmpregado int,
@TotalEmpregados INT OUTPUT
)
AS
DELETE FROM Empregado WHERE idempregado = @idempregado
SELECT @TotalEmpregados = Count(*) FROM Empregado
Declare @TotalEmpregados int
EXECUTE EmpregadoDelete 2, @TotalEmpregados output
SELECT @TotalEmpregados 'TOTAL DOS EMPREGADOS'


87. 
CREATE PROCEDURE EmpregadoSelect
AS
SELECT * FROM Empregado
EXECUTE EmpregadoSelect

 