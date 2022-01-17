use AdventureWorks2017
go
----------------------Task �1-----------------------------

select*from Sales.Customer
-------------------------------------------------------------
go
----------------------Task �2-----------------------------

select *from Sales.Store
order by Sales.Store.Name asc
-------------------------------------------------------------
go
----------------------Task �3-----------------------------

select Top(10)*from HumanResources.Employee
where BirthDate>'1989-09-28'
-------------------------------------------------------------
go
----------------------Task �4-----------------------------

select NationalIDNumber,LoginID,JobTitle
from HumanResources.Employee
where HumanResources.Employee.LoginID like'%0'
order by JobTitle desc
-------------------------------------------------------------
go
----------------------Task �5-----------------------------

select *from Person.Person
where ModifiedDate Between '2008'and '2009' and
Person.MiddleName is not null and
Title is null
-------------------------------------------------------------
go
----------------------Task �6-----------------------------

select Distinct HumanResources.Department.Name as hd
from HumanResources.Department
inner join HumanResources.EmployeeDepartmentHistory h
on HumanResources.Department.DepartmentID=h.DepartmentID
where EndDate is not null
-------------------------------------------------------------
go

----------------------Task �7-----------------------------

select SalesPerson.Bonus, COUNT(CommissionPct)
from Sales.SalesPerson
JOIN Sales.SalesTerritory as d
ON d.TerritoryID=Sales.SalesPerson.TerritoryID
group by SalesPerson.Bonus
having COUNT(CommissionPct)>0
-------------------------------------------------------------
go
----------------------Task �8-----------------------------

select Top(1) BusinessEntityID,NationalIDNumber,LoginID,OrganizationNode,OrganizationLevel,JobTitle,
BirthDate,Max(HumanResources.Employee.VacationHours)
from HumanResources.Employee
group by BusinessEntityID,NationalIDNumber,LoginID,OrganizationNode,OrganizationLevel,JobTitle,BirthDate

-------------------------------------------------------------
go
----------------------Task �9-----------------------------

select*from HumanResources.Employee
where JobTitle in('Sales Representative','Network Administrator' , 'Network Manager')
-------------------------------------------------------------
go
----------------------Task �10-----------------------------

select*from HumanResources.Employee  as e
join Purchasing.PurchaseOrderHeader as p
on e.BusinessEntityID=p.EmployeeID
where (p.EmployeeID is not null) or( p.EmployeeID is not null)
-------------------------------------------------------------

