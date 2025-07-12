select 
	avg(sum) "Средняя сумма продаж для товара Фанера"
from
	Sells s
	inner join Products p
		on s.ID_Prod = p.ID
where 
	p."name" = 'Фанера'
