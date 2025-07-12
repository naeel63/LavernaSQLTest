select 
	Fio,
	sum(s.sum)
from
	Managers m
	inner join Sells s 
		on m.ID = s.ID_Manag
	inner join Products p
		on s.ID_Prod = p.ID
where 
	p.Name = 'ОСБ'
group by 
	Fio