Data: 09/09/2022

063. Criar View para consulta abaixo:
Create view vw_consulta_01 as


Select
o.orderId, o.orderDate, e.firstName -- , d.productId, d.quantity, p.price, SUM(d.quantity * p.price) as TotalFROM
Orders o
Inner Join Employees e ON (e.employeeId = o.employeeId)
Inner Join OrderDetails d ON (d.orderId = o.orderId)Inner Join Products p ON (p.productId = d.productId)
GROUP BY o.orderId, o.orderDate, e.firstNameORDER BY Total DESC




064. Criar View para consulta abaixo:
Create view vw_consulta_02 as

SELECT
o.OrderID, o.OrderDate, e.FirstName
,p.ProductName, c.CategoryName, d.Quantity , p.Price
,d.Quantity * p.Price As 'Total Produto'
FROM
Orders o
Inner JOIN Employees e On (e.EmployeeID = o.EmployeeID)
Inner JOIN OrderDetails d On (d.orderid = o.orderid)
Inner JOIN Products p ON (p.ProductID = d.ProductID )
Inner JOIN Categories c ON (c.CategoryID = p.CategoryID)


065. Criar View para consulta abaixo:
Create view vw_consulta_03 AS

SELECTc.customername,SUM(d.Quantity * p.Price) as 'Total de Vendas',AVG(d.Quantity * p.Price) as 'Média de Vendas'FROM
Orders oINNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)


066. Criar View para consulta abaixo:
Create view vw_consulta_04 as


SELECT
c.categoryname,
SUM(d.Quantity * p.Price) as 'Total de Vendas',
AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
OrderDetails d 
INNER JOIN Products p ON (p.ProductID = d.ProductID)
INNER JOIN Categories c ON (c.categoryid = p.categoryid )
GROUP BY c.categoryname
ORDER BY 3 DESC


067. Criar View para consulta abaixo:
Create view vw_consulta_05 as


SELECT
 e.LastName+', '+e.FirstName as 'Empregado',
SUM(d.Quantity * p.Price) as 'Total de Vendas',
AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
Orders o
INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
INNER JOIN Employees e ON (e.employeeid = o.employeeid )
INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY e.LastName+', '+e.FirstName
ORDER BY 3 DESC

068. Criar View para consulta abaixo:
Create view vw_consulta_06 as


SELECT
 s.ShipperName,
SUM(d.Quantity * p.Price) as 'Total de Vendas',
AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
Orders o
INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
INNER JOIN Shippers s ON (s.ShipperID= o.ShipperID)
INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY s.ShipperName
ORDER BY 3 DESC


069. Criar View para consulta abaixo:
Create view vw_consulta_07 as

SELECT
p.productname,
SUM(d.Quantity * p.Price) as 'Total de Vendas',
AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
OrderDetails d 
INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY p.productname
ORDER BY 3 DESC



070. Criar View para consulta abaixo:
Create view vw_consulta_08 as

SELECT
 s.ShipperName,
 p.ProductName,
 SUM(d.Quantity * p.Price) as 'Total de Vendas'
FROM
Orders o
INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
INNER JOIN Shippers s ON (s.ShipperID= o.ShipperID)
INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY s.ShipperName, p.ProductName
ORDER BY 'Total de Vendas' DESC

071. Criar View para consulta abaixo:
Create view vw_consulta_09 as

SELECT
 YEAR(o.OrderDate) AS 'Ano',
 MONTH(o.OrderDate) AS 'Mês',
 AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
Orders o
INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY YEAR(o.OrderDate),MONTH(o.OrderDate)
ORDER BY 'Ano' DESC,'Mês' DESC


072. Criar View para consulta abaixo:
Create view vw_consulta_10 as


select 
 DATEPART(mm,OrderDate),Month(Orderdate) as mes 
,DATEPART(dy,OrderDate) as 'dia do ano'
,DATEPART(dy,GetDate()) as 'dia do ano atual'
,DATEPART(dw,GetDate()) as 'dia da semana'
,DATEPART(day,GetDate()) as 'dia'
from Orders
