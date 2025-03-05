--select* from lift_passengers;

--select*from lift;

--Problem : Please read the README.MD file !

select* from lift_passengers;

with cte as
	(select* 
	,sum (weight_kg) over (partition by id order by id,weight_kg) as cumm_weight
	,case when capacity_kg>=sum (weight_kg) over (partition by id order by id,weight_kg) then 1 else 0 end as flag
	from lift as lft
	join lift_passengers as lp on lp.lift_id = lft.id
	order by id,weight_kg) 

select lift_id, string_agg(passenger_name,' ,') as passenger
from cte 
where flag =1
group by lift_id












	
 