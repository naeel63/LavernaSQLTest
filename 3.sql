select 
	avg(sum)
from
	Sells s
	inner join Products p
		on s.ID_Prod = p.ID
where 
	p."name" = 'Фанера'