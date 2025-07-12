select 
	Name "Название товара"
from
	Products
where 
	Name like '%Фанера%'
	and cost > 1750
