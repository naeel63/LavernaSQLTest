--как я понял, надо вывести товар, который продали в этот день, и менеджера/ов, который его продал
select 
	m.Fio "ФИО менеджера",
	p.Name "Название товара"
from
	Managers m
	inner join Sells s 
		on m.ID = s.ID_Manag
	inner join Products p
		on s.ID_Prod = p.ID
where 
	s.Date = '2024-08-22'
group by 
	Fio,
	p.Name
	
