select 
	Name "Название товара"
from
	Products
group by 
	Name
having 
	count(0) > 1