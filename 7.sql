select 
	p."name" "Названиа товара",
	extract(month from s.Date) "Месяц",
	sum(s.Count) "Количество товара",
	sum(s.Sum) "Сумма"
from
	Products p
	left join Sells s
		on p.ID = s.ID_Prod
group by
	p.name,
	extract(month from s.Date)