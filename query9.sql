-- update customer details based on user input
set @customer_name = 'Lishe Dooley';
set @customer_input = 1;
set @customer_input2 = '9810601703';
update sql_users.customer
set customer_email = case
when @customer_input = 1 then @customer_input2
else customer_email
end,
 address = case
when @customer_input = 2 then @customer_input2
else address
end,
customer_contact_number= case
when @customer_input=3 then @customer_input2
else customer_contact_number
end
where customer_name = @customer_name;

select * from sql_users.customer where customer_name = @customer_name;