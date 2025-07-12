select 
	Fio "ФИО менеджера",
	sum(s.sum) "Сумма продаж по ОСБ"
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
