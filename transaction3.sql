start transaction;
update sql_users.delivery_executive 
set salary=salary+1.1*salary 
where no_of_trips>=150;
commit;