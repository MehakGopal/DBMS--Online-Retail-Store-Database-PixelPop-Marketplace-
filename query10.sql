update sql_retailstore.bill_details
set delivery_charge = case
when total_cost<500 then 200
when total_cost between 500 and 2000 then 100
else 25
end;

select * from sql_retailstore.bill_details;
