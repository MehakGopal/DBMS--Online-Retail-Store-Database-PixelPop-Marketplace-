-- Updating salary based on nooftrips>150;

Update sql_users.Delivery_Executive
Set Salary=Salary+(Salary*1.1)
where no_of_trips>150;

SELECT * 
FROM sql_users.Delivery_Executive
