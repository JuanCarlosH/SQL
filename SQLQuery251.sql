select * from dbo.Orders

select * from dbo.Employees

select  COUNT(*) as total, e.LastName 
from dbo.Orders as o inner join 
     dbo.Employees as e on o.EmployeeID=e.EmployeeID
group by LastName

select  COUNT(*) as total, e.FirstName, e.LastName 
from dbo.Orders as o inner join 
     dbo.Employees as e on o.EmployeeID = e.EmployeeID 
group by e.FirstName,e.LastName
having COUNT(*)>100 
order by FirstName,LastName

select  COUNT(*)as total, e.EmployeeID, e.LastName
from dbo.Orders  as o inner join  
     dbo.Employees as e on o.EmployeeID=e.EmployeeID
group by e.EmployeeID, e.LastName



