Select * from matm_data where [Serial Number] like '1%'

select Mdn,[Full Name],[Serial Number],[Bussiness Name],
	case 
		when [Serial Number] like '1%' then 'TPS300'
		when [Serial Number] like '6%' then 'SP600'
		else 'Invalid TID'
end as Terminal_Type
from matm_data

select top 2* from Oxirail

select MDN,PNRNumber,Class,TicketFare,
case 
	when TicketFare<2000 then 'Good'
	--when TicketFare>5000 then 'Good'
	--when TicketFare>7000 then 'Very good'
	when TicketFare>2000 then 'Excellent'
	--else 'Need improve'
end as Retailer_Status
	from Oxirail

	use My_DB

select distinct Salary from TblEmployee order by Salary desc

select MAX(salary) as high_salary from TblEmployee where Salary<(select MAX(salary) from TblEmployee)









