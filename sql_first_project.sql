# Segmentation queries 

# 1. income segmentation 

select 
case 
	when Annual_income < 30000 then 'Low_income'
	when Annual_income between 30000 and 60000 then 'Mid_income'
	Else 'High_income'
End as income_segment,
count(*) as customer_count
from customer_data_with_churn
group by case 
	when Annual_income < 30000 then 'Low_income'
	when Annual_income between 30000 and 60000 then 'Mid_income'
	Else 'High_income'
End;