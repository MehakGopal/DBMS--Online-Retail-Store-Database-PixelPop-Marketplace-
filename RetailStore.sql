
create database if not exists sql_RetailStore;
Use sql_RetailStore;
DROP TABLES if exists ordered_items,success_payment, placing_order,pays,payment,bill_details,cart_Details, add_to_cart;


CREATE TABLE IF NOT EXISTS add_to_cart(
    Cart_ID INT AUTO_INCREMENT,
    customer_id VARCHAR(50) NOT NULL,
    PRIMARY KEY(Cart_ID),
    FOREIGN KEY (customer_id) REFERENCES sql_users.customer (customer_id) ON UPDATE CASCADE ON DELETE CASCADE
);

insert into add_to_cart (customer_id) values ('aa');
insert into add_to_cart (customer_id) values ('agreguoli5l');
insert into add_to_cart (customer_id) values ('aholcroft5i');
insert into add_to_cart (customer_id) values ('aknagges40');
insert into add_to_cart (customer_id) values ('akollasch2f');
insert into add_to_cart (customer_id) values ('apibsworth29');
insert into add_to_cart (customer_id) values ('apoe7c');
insert into add_to_cart (customer_id) values ('aseabrocke56');
insert into add_to_cart (customer_id) values ('astapley2c');
insert into add_to_cart (customer_id) values ('awatheyr');
insert into add_to_cart (customer_id) values ('balflatt20');
insert into add_to_cart (customer_id) values ('bbouchard3c');
insert into add_to_cart (customer_id) values ('bbowkley6i');
insert into add_to_cart (customer_id) values ('bduce5c');
insert into add_to_cart (customer_id) values ('bnesterov5u');
insert into add_to_cart (customer_id) values ('boneligan6l');
insert into add_to_cart (customer_id) values ('cblaxton7i');
insert into add_to_cart (customer_id) values ('cemilien3i');
insert into add_to_cart (customer_id) values ('cfishpoole2l');
insert into add_to_cart (customer_id) values ('cfloresu');
insert into add_to_cart (customer_id) values ('cgudgen73');
insert into add_to_cart (customer_id) values ('cgullis4i');
insert into add_to_cart (customer_id) values ('ckinnaird1c');
insert into add_to_cart (customer_id) values ('cliell13');
insert into add_to_cart (customer_id) values ('cmacilwrick1i');
insert into add_to_cart (customer_id) values ('cmcmenemy19');
insert into add_to_cart (customer_id) values ('cmcnaught6f');
insert into add_to_cart (customer_id) values ('csherbrooke4f');
insert into add_to_cart (customer_id) values ('ctrowell7r');
insert into add_to_cart (customer_id) values ('cwanderschek6o');
insert into add_to_cart (customer_id) values ('dbains23');
insert into add_to_cart (customer_id) values ('dbelcher66');
insert into add_to_cart (customer_id) values ('dfeatherbyl');
insert into add_to_cart (customer_id) values ('dpottageo');
insert into add_to_cart (customer_id) values ('dsivill1o');
insert into add_to_cart (customer_id) values ('ecochet7x');
insert into add_to_cart (customer_id) values ('gphelips79');
insert into add_to_cart (customer_id) values ('gtrimby3o');
insert into add_to_cart (customer_id) values ('hderechter2u');
insert into add_to_cart (customer_id) values ('hgonthard7l');
insert into add_to_cart (customer_id) values ('hjakoviljevic4x');
insert into add_to_cart (customer_id) values ('hmackerley3j');
insert into add_to_cart (customer_id) values ('htoe6');
insert into add_to_cart (customer_id) values ('ideekes80');
insert into add_to_cart (customer_id) values ('jdoore76');
insert into add_to_cart (customer_id) values ('jkingscottc');
insert into add_to_cart (customer_id) values ('jknok4o');
insert into add_to_cart (customer_id) values ('jocorren3u');
insert into add_to_cart (customer_id) values ('jpumfrey49');
insert into add_to_cart (customer_id) values ('jricards4l');
insert into add_to_cart (customer_id) values ('koakey1f');


# Rows:


CREATE TABLE IF NOT EXISTS cart_Details(
    Product_ID INT NOT NULL,
    Product_quantity INT NOT NULL,
    total_cost INT NOT NULL,
    Cart_ID INT NOT NULL,
    FOREIGN KEY (Cart_ID) REFERENCES add_to_cart (Cart_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Product_ID) REFERENCES sql_Inventory.Product (Product_ID) ON UPDATE CASCADE ON DELETE CASCADE
);
DELIMITER $$

CREATE TRIGGER check_quantity
BEFORE INSERT ON cart_Details
FOR EACH ROW
BEGIN
    IF NEW.Product_quantity > (SELECT Quantity FROM sql_Inventory.Product WHERE Product_ID = NEW.Product_ID) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: Requested quantity exceeds available quantity';
    END IF;
END$$

DELIMITER ;

insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (49, 1, 0, 1);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (92, 2, 0, 2);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (65, 4, 0, 3);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (12, 4, 0, 4);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (19, 2, 0, 5);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (60, 5, 0, 6);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (65, 4, 0, 7);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (86, 1, 0, 8);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (10, 1, 0, 9);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (75, 1, 0, 10);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (86, 2, 0, 11);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (92, 1, 0, 12);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (84, 2, 0, 13);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (21, 1, 0, 14);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (16, 4, 0, 15);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (61, 2, 0, 16);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (87, 1, 0, 17);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (61, 1, 0, 18);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (27, 5, 0, 19);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (29, 2, 0, 20);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (76, 1, 0, 21);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (65, 1, 0, 22);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (11, 1, 0, 23);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (80, 3, 0, 24);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (66, 2, 0, 25);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (19, 4, 0, 26);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (6, 1, 0, 27);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (66, 5, 0, 28);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (35, 1, 0, 29);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (54, 1, 0, 30);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (28, 4, 0, 31);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (86, 1, 0, 32);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (28, 4, 0, 33);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (82, 4, 0, 34);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (94, 1, 0, 35);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (14, 3, 0, 36);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (22, 2, 0, 37);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (43, 4, 0, 38);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (2, 5, 0, 39);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (93, 3, 0, 40);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (38, 1, 0, 41);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (67, 5, 0, 42);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (16, 4, 0, 43);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (84, 1, 0, 44);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (18, 1, 0, 45);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (34, 2, 0, 46);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (23, 4, 0, 47);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (69, 1, 0, 48);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (68, 1, 0, 49);
insert into cart_Details (Product_ID, Product_quantity, total_cost, Cart_ID) values (42, 3, 0, 50);


UPDATE cart_Details
SET total_cost = (SELECT sql_Inventory.Product.Price FROM sql_Inventory.Product WHERE cart_Details.Product_ID = sql_Inventory.Product.Product_ID) * Product_quantity;


CREATE TABLE IF NOT EXISTS bill_details(
    BILL_ID INT NOT NULL,
    total_discount INT NOT NULL,
    delivery_date DATE NOT NULL,
    delivery_charge INT NOT NULL,
    total_cost INT NOT NULL,
    PRIMARY KEY(BILL_ID),
    FOREIGN KEY (BILL_ID) REFERENCES cart_Details (Cart_ID) ON UPDATE CASCADE ON DELETE CASCADE
);


insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (2, 10, '2023-03-13', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (3, 28, '2022-10-25', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (4, 34, '2022-09-02', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (5, 42, '2022-10-12', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (6, 21, '2023-03-18', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (7, 17, '2023-01-10', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (8, 40, '2022-04-30', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (9, 47, '2023-01-28', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (10, 26, '2022-08-13', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (11, 14, '2022-04-29', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (12, 42, '2022-08-12', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (13, 1, '2023-03-03', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (14, 46, '2022-12-08', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (15, 3, '2022-06-25', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (16, 46, '2023-04-10', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (17, 46, '2022-10-25', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (18, 41, '2023-01-27', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (19, 3, '2022-12-20', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (20, 39, '2022-09-07', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (21, 12, '2023-04-18', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (22, 4, '2023-04-20', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (23, 27, '2022-06-27', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (24, 19, '2022-08-11', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (25, 36, '2023-02-27', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (26, 8, '2022-09-10', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (27, 39, '2022-09-10', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (28, 35, '2022-10-30', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (29, 25, '2023-03-17', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (30, 6, '2022-09-07', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (31, 16, '2022-06-19', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (32, 10, '2023-01-01', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (33, 22, '2022-06-04', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (34, 20, '2022-12-13', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (35, 30, '2022-05-02', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (36, 41, '2022-08-29', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (37, 17, '2023-02-13', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (38, 32, '2022-12-31', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (39, 27, '2023-04-23', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (40, 24, '2022-09-23', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (41, 40, '2022-06-21', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (42, 47, '2022-06-06', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (43, 28, '2022-10-18', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (44, 22, '2022-12-18', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (45, 10, '2022-07-17', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (46, 25, '2022-08-22', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (47, 38, '2023-02-16', 50, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (48, 32, '2022-10-16', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (49, 31, '2022-05-30', 100, 0);
insert into bill_details (BILL_ID, total_discount, delivery_date, delivery_charge, total_cost) values (50, 10, '2022-11-30', 50, 0);

-- DELIMITER $$


UPDATE bill_details
INNER JOIN (
    SELECT
        cart_Details.Cart_ID,
        SUM(cart_Details.total_cost) AS total_cost
    FROM cart_Details
    GROUP BY cart_Details.Cart_ID
) AS cart_total_cost ON bill_details.BILL_ID = cart_total_cost.Cart_ID
SET bill_details.total_cost = cart_total_cost.total_cost + bill_details.delivery_charge - bill_details.total_discount;


CREATE TABLE IF NOT EXISTS payment(
    Payment_ID INT NOT NULL,
    card_name VARCHAR(50) NOT NULL,
    card_number VARCHAR(50) NOT NULL,
    CVV VARCHAR(50) NOT NULL,
    expiry_date DATE NOT NULL,
    PRIMARY KEY(Payment_ID),
    FOREIGN KEY (Payment_ID) REFERENCES cart_Details (Cart_ID) ON UPDATE CASCADE ON DELETE CASCADE
);

insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (2, 'Lilly Coppledike', '1974667766', 102, '2029-07-29');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (3, 'Branden Lemmen', '9549648788', 130, '2024-07-03');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (4, 'Weylin Peter', '2841701956', 513, '2026-04-17');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (5, 'Tobi Lorence', '1058530267', 654, '2030-08-23');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (6, 'Jenine Postins', '9368537712', 290, '2031-02-21');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (7, 'Huntley Espley', '8427956967', 280, '2027-07-25');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (8, 'Wilhelmina MacGarrity', '7857608807', 830, '2024-09-23');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (9, 'Garvy Dowbiggin', '1793515522', 213, '2025-08-25');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (10, 'Jerrine Spitaro', '2155479735', 392, '2022-08-13');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (11, 'Timmie Shoosmith', '8386160446', 486, '2022-09-10');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (12, 'Arney Thomkins', '4448609421', 433, '2031-09-09');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (13, 'Bowie Bamb', '9040179670', 538, '2023-08-10');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (14, 'Ennis Olekhov', '6213772413', 232, '2027-06-22');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (15, 'Richy Shattock', '8171357679', 849, '2025-08-06');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (16, 'Betty Shepeard', '0024576344', 324, '2029-07-27');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (17, 'Cati Burthom', '4070339582', 627, '2024-07-31');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (18, 'Bald Thoresby', '0165477814', 140, '2028-10-20');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (19, 'Osbourne Lyvon', '7574600406', 499, '2031-12-11');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (20, 'Modesta Meric', '7954302954', 239, '2027-08-17');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (21, 'Chevy Sarrell', '1713070359', 927, '2031-02-19');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (22, 'Brodie Fishly', '7881271841', 733, '2030-06-27');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (23, 'Gerrard Rait', '7478227007', 452, '2026-11-02');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (24, 'Gretta Seif', '9744126515', 824, '2029-06-14');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (25, 'Ibby Threadgall', '7100441366', 668, '2031-03-09');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (26, 'Camila Empringham', '9684982992', 173, '2025-05-20');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (27, 'Emmalee Willey', '8050244628', 837, '2024-06-14');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (28, 'Georgeanna Woolway', '0309758882', 172, '2031-08-15');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (29, 'Cookie Queree', '6159246356', 857, '2029-12-22');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (30, 'Lorrin Busse', '2162308924', 807, '2024-12-18');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (31, 'Deb Eddies', '1110925360', 759, '2027-01-14');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (32, 'Paulie Southgate', '2569547735', 472, '2030-01-07');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (33, 'Tessi Crufts', '5304444175', 233, '2022-10-22');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (34, 'Shanta Hosby', '5599943291', 908, '2029-05-26');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (35, 'Udell Freed', '7701272984', 799, '2023-05-04');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (36, 'Etienne Stagg', '3726804854', 538, '2024-06-10');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (37, 'Dina Carrivick', '8371900481', 671, '2029-02-03');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (38, 'Cinda Fawlo', '9318714378', 917, '2029-03-01');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (39, 'Jasen Jakubovicz', '1979994366', 446, '2031-07-08');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (40, 'Daniella Lipscomb', '8171490638', 451, '2027-08-25');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (41, 'Allin Gentery', '4361394598', 336, '2024-07-08');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (42, 'Pernell Biggin', '0822338483', 302, '2023-02-20');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (43, 'Vittorio McCarlich', '2813641820', 911, '2030-12-17');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (44, 'Maggi Aldrick', '0106997769', 838, '2031-05-23');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (45, 'Goldy Looney', '9303701054', 649, '2025-10-10');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (46, 'Elfie Gelletly', '5648409761', 994, '2024-02-29');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (47, 'Ernst Urey', '1174259205', 242, '2025-02-03');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (48, 'Tamarra Gamlin', '1358105278', 580, '2031-02-14');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (49, 'Tessy Matthewson', '2103743172', 521, '2022-05-19');
insert into payment (Payment_ID, card_name, card_number, CVV, expiry_date) values (50, 'Winslow Chessor', '9790695608', 275, '2025-04-18');

DELIMITER $$
CREATE TRIGGER trigger_name
BEFORE INSERT ON sql_RetailStore.payment
FOR EACH ROW
BEGIN
    IF NEW.expiry_date < CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Card is expired";
    END IF;
END $$
DELIMITER ;












CREATE TABLE IF NOT EXISTS placing_order(
    BILL_ID INT NOT NULL,
    Cart_ID INT NOT NULL,
    PRIMARY KEY(BILL_ID, Cart_ID),
    FOREIGN KEY (BILL_ID) REFERENCES bill_details (BILL_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Cart_ID) REFERENCES add_to_cart (Cart_ID) ON UPDATE CASCADE ON DELETE CASCADE
);



insert into placing_order (BILL_ID, Cart_ID) values (2, 2);
insert into placing_order (BILL_ID, Cart_ID) values (3, 3);
insert into placing_order (BILL_ID, Cart_ID) values (4, 4);
insert into placing_order (BILL_ID, Cart_ID) values (5, 5);
insert into placing_order (BILL_ID, Cart_ID) values (6, 6);
insert into placing_order (BILL_ID, Cart_ID) values (7, 7);
insert into placing_order (BILL_ID, Cart_ID) values (8, 8);
insert into placing_order (BILL_ID, Cart_ID) values (9, 9);
insert into placing_order (BILL_ID, Cart_ID) values (10, 10);
insert into placing_order (BILL_ID, Cart_ID) values (11, 11);
insert into placing_order (BILL_ID, Cart_ID) values (12, 12);
insert into placing_order (BILL_ID, Cart_ID) values (13, 13);
insert into placing_order (BILL_ID, Cart_ID) values (14, 14);
insert into placing_order (BILL_ID, Cart_ID) values (15, 15);
insert into placing_order (BILL_ID, Cart_ID) values (16, 16);
insert into placing_order (BILL_ID, Cart_ID) values (17, 17);
insert into placing_order (BILL_ID, Cart_ID) values (18, 18);
insert into placing_order (BILL_ID, Cart_ID) values (19, 19);
insert into placing_order (BILL_ID, Cart_ID) values (20, 20);
insert into placing_order (BILL_ID, Cart_ID) values (21, 21);
insert into placing_order (BILL_ID, Cart_ID) values (22, 22);
insert into placing_order (BILL_ID, Cart_ID) values (23, 23);
insert into placing_order (BILL_ID, Cart_ID) values (24, 24);
insert into placing_order (BILL_ID, Cart_ID) values (25, 25);
insert into placing_order (BILL_ID, Cart_ID) values (26, 26);
insert into placing_order (BILL_ID, Cart_ID) values (27, 27);
insert into placing_order (BILL_ID, Cart_ID) values (28, 28);
insert into placing_order (BILL_ID, Cart_ID) values (29, 29);
insert into placing_order (BILL_ID, Cart_ID) values (30, 30);
insert into placing_order (BILL_ID, Cart_ID) values (31, 31);
insert into placing_order (BILL_ID, Cart_ID) values (32, 32);
insert into placing_order (BILL_ID, Cart_ID) values (33, 33);
insert into placing_order (BILL_ID, Cart_ID) values (34, 34);
insert into placing_order (BILL_ID, Cart_ID) values (35, 35);
insert into placing_order (BILL_ID, Cart_ID) values (36, 36);
insert into placing_order (BILL_ID, Cart_ID) values (37, 37);
insert into placing_order (BILL_ID, Cart_ID) values (38, 38);
insert into placing_order (BILL_ID, Cart_ID) values (39, 39);
insert into placing_order (BILL_ID, Cart_ID) values (40, 40);
insert into placing_order (BILL_ID, Cart_ID) values (41, 41);
insert into placing_order (BILL_ID, Cart_ID) values (42, 42);
insert into placing_order (BILL_ID, Cart_ID) values (43, 43);
insert into placing_order (BILL_ID, Cart_ID) values (44, 44);
insert into placing_order (BILL_ID, Cart_ID) values (45, 45);
insert into placing_order (BILL_ID, Cart_ID) values (46, 46);
insert into placing_order (BILL_ID, Cart_ID) values (47, 47);
insert into placing_order (BILL_ID, Cart_ID) values (48, 48);
insert into placing_order (BILL_ID, Cart_ID) values (49, 49);
insert into placing_order (BILL_ID, Cart_ID) values (50, 50);



CREATE TABLE IF NOT EXISTS pays(
    BILL_ID INT NOT NULL,
    Payment_ID INT NOT NULL,
    PRIMARY KEY(BILL_ID, Payment_ID),
    FOREIGN KEY (BILL_ID) REFERENCES bill_details (BILL_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Payment_ID) REFERENCES payment (Payment_ID) ON UPDATE CASCADE ON DELETE CASCADE
);



insert into pays (Payment_ID, BILL_ID) values (2, 2);
insert into pays (Payment_ID, BILL_ID) values (3, 3);
insert into pays (Payment_ID, BILL_ID) values (4, 4);
insert into pays (Payment_ID, BILL_ID) values (5, 5);
insert into pays (Payment_ID, BILL_ID) values (6, 6);
insert into pays (Payment_ID, BILL_ID) values (7, 7);
insert into pays (Payment_ID, BILL_ID) values (8, 8);
insert into pays (Payment_ID, BILL_ID) values (9, 9);
insert into pays (Payment_ID, BILL_ID) values (10, 10);
insert into pays (Payment_ID, BILL_ID) values (11, 11);
insert into pays (Payment_ID, BILL_ID) values (12, 12);
insert into pays (Payment_ID, BILL_ID) values (13, 13);
insert into pays (Payment_ID, BILL_ID) values (14, 14);
insert into pays (Payment_ID, BILL_ID) values (15, 15);
insert into pays (Payment_ID, BILL_ID) values (16, 16);
insert into pays (Payment_ID, BILL_ID) values (17, 17);
insert into pays (Payment_ID, BILL_ID) values (18, 18);
insert into pays (Payment_ID, BILL_ID) values (19, 19);
insert into pays (Payment_ID, BILL_ID) values (20, 20);
insert into pays (Payment_ID, BILL_ID) values (21, 21);
insert into pays (Payment_ID, BILL_ID) values (22, 22);
insert into pays (Payment_ID, BILL_ID) values (23, 23);
insert into pays (Payment_ID, BILL_ID) values (24, 24);
insert into pays (Payment_ID, BILL_ID) values (25, 25);
insert into pays (Payment_ID, BILL_ID) values (26, 26);
insert into pays (Payment_ID, BILL_ID) values (27, 27);
insert into pays (Payment_ID, BILL_ID) values (28, 28);
insert into pays (Payment_ID, BILL_ID) values (29, 29);
insert into pays (Payment_ID, BILL_ID) values (30, 30);
insert into pays (Payment_ID, BILL_ID) values (31, 31);
insert into pays (Payment_ID, BILL_ID) values (32, 32);
insert into pays (Payment_ID, BILL_ID) values (33, 33);
insert into pays (Payment_ID, BILL_ID) values (34, 34);
insert into pays (Payment_ID, BILL_ID) values (35, 35);
insert into pays (Payment_ID, BILL_ID) values (36, 36);
insert into pays (Payment_ID, BILL_ID) values (37, 37);
insert into pays (Payment_ID, BILL_ID) values (38, 38);
insert into pays (Payment_ID, BILL_ID) values (39, 39);
insert into pays (Payment_ID, BILL_ID) values (40, 40);
insert into pays (Payment_ID, BILL_ID) values (41, 41);
insert into pays (Payment_ID, BILL_ID) values (42, 42);
insert into pays (Payment_ID, BILL_ID) values (43, 43);
insert into pays (Payment_ID, BILL_ID) values (44, 44);
insert into pays (Payment_ID, BILL_ID) values (45, 45);
insert into pays (Payment_ID, BILL_ID) values (46, 46);
insert into pays (Payment_ID, BILL_ID) values (47, 47);
insert into pays (Payment_ID, BILL_ID) values (48, 48);
insert into pays (Payment_ID, BILL_ID) values (49, 49);
insert into pays (Payment_ID, BILL_ID) values (50, 50);

create table if not exists assigns(
	admin_user_id varchar(50) not null,
	payment_ID int not null,
    agent_id varchar(50) not null,
    PRIMARY KEY(payment_ID,agent_ID),
    FOREIGN KEY (agent_id) REFERENCES sql_users.Delivery_Executive(agent_id)ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (admin_user_id) REFERENCES sql_users.admin(user_id)ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (payment_ID) REFERENCES sql_RetailStore.payment(Payment_ID)ON UPDATE CASCADE
        ON DELETE CASCADE
    
);

CREATE TABLE IF NOT EXISTS success_payment(
    Payment_ID INT NOT NULL,
	BILL_ID INT NOT NULL,
    PRIMARY KEY(BILL_ID,Payment_ID),
    FOREIGN KEY (Payment_ID) REFERENCES payment (Payment_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (BILL_ID) REFERENCES bill_details (BILL_ID) ON UPDATE CASCADE ON DELETE CASCADE

);


insert into success_payment (Payment_ID, BILL_ID) values (2, 2);
insert into success_payment (Payment_ID, BILL_ID) values (3, 3);
insert into success_payment (Payment_ID, BILL_ID) values (4, 4);
insert into success_payment (Payment_ID, BILL_ID) values (5, 5);
insert into success_payment (Payment_ID, BILL_ID) values (6, 6);
insert into success_payment (Payment_ID, BILL_ID) values (7, 7);
insert into success_payment (Payment_ID, BILL_ID) values (8, 8);
insert into success_payment (Payment_ID, BILL_ID) values (9, 9);
insert into success_payment (Payment_ID, BILL_ID) values (10, 10);
insert into success_payment (Payment_ID, BILL_ID) values (11, 11);
insert into success_payment (Payment_ID, BILL_ID) values (12, 12);
insert into success_payment (Payment_ID, BILL_ID) values (13, 13);
insert into success_payment (Payment_ID, BILL_ID) values (14, 14);
insert into success_payment (Payment_ID, BILL_ID) values (15, 15);
insert into success_payment (Payment_ID, BILL_ID) values (16, 16);
insert into success_payment (Payment_ID, BILL_ID) values (17, 17);
insert into success_payment (Payment_ID, BILL_ID) values (18, 18);
insert into success_payment (Payment_ID, BILL_ID) values (19, 19);
insert into success_payment (Payment_ID, BILL_ID) values (20, 20);
insert into success_payment (Payment_ID, BILL_ID) values (21, 21);
insert into success_payment (Payment_ID, BILL_ID) values (22, 22);
insert into success_payment (Payment_ID, BILL_ID) values (23, 23);
insert into success_payment (Payment_ID, BILL_ID) values (24, 24);
insert into success_payment (Payment_ID, BILL_ID) values (25, 25);
insert into success_payment (Payment_ID, BILL_ID) values (26, 26);
insert into success_payment (Payment_ID, BILL_ID) values (27, 27);
insert into success_payment (Payment_ID, BILL_ID) values (28, 28);
insert into success_payment (Payment_ID, BILL_ID) values (29, 29);
insert into success_payment (Payment_ID, BILL_ID) values (30, 30);
insert into success_payment (Payment_ID, BILL_ID) values (31, 31);
insert into success_payment (Payment_ID, BILL_ID) values (32, 32);
insert into success_payment (Payment_ID, BILL_ID) values (33, 33);
insert into success_payment (Payment_ID, BILL_ID) values (34, 34);
insert into success_payment (Payment_ID, BILL_ID) values (35, 35);
insert into success_payment (Payment_ID, BILL_ID) values (36, 36);
insert into success_payment (Payment_ID, BILL_ID) values (37, 37);
insert into success_payment (Payment_ID, BILL_ID) values (38, 38);
insert into success_payment (Payment_ID, BILL_ID) values (39, 39);
insert into success_payment (Payment_ID, BILL_ID) values (40, 40);
insert into success_payment (Payment_ID, BILL_ID) values (41, 41);
insert into success_payment (Payment_ID, BILL_ID) values (42, 42);
insert into success_payment (Payment_ID, BILL_ID) values (43, 43);
insert into success_payment (Payment_ID, BILL_ID) values (44, 44);
insert into success_payment (Payment_ID, BILL_ID) values (45, 45);
insert into success_payment (Payment_ID, BILL_ID) values (46, 46);
insert into success_payment (Payment_ID, BILL_ID) values (47, 47);
insert into success_payment (Payment_ID, BILL_ID) values (48, 48);
insert into success_payment (Payment_ID, BILL_ID) values (49, 49);
insert into success_payment (Payment_ID, BILL_ID) values (50, 50);


CREATE TABLE IF NOT EXISTS ordered_items(
	order_ID int not null,
    total_cost BIGINT NOT NULL,
    products_ordered TEXT NOT NULL,
    FOREIGN KEY (order_ID) REFERENCES sql_RetailStore.payment(Payment_ID)ON UPDATE CASCADE ON DELETE CASCADE
);

START TRANSACTION;
INSERT INTO assigns (admin_user_id, payment_ID, agent_id)
SELECT 'mehak', sp.Payment_ID, (SELECT sql_users.Delivery_Executive.agent_id FROM sql_users.Delivery_Executive ORDER BY RAND() LIMIT 1)
FROM success_payment sp
LEFT JOIN assigns a ON sp.Payment_ID = a.payment_ID
WHERE a.payment_ID IS NULL;

UPDATE sql_users.Delivery_Executive de
JOIN assigns a ON de.agent_id = a.agent_id
SET de.no_of_trips = de.no_of_trips + 1;
INSERT INTO ordered_items (order_ID,total_cost, products_ordered)
SELECT sp.payment_ID,bd.total_cost, GROUP_CONCAT(cd.Product_ID)
FROM bill_details bd
JOIN cart_Details cd ON bd.BILL_ID = cd.Cart_ID
JOIN success_payment sp ON cd.Cart_ID = sp.payment_ID
LEFT JOIN ordered_items oi ON sp.payment_ID = oi.order_ID
WHERE oi.order_ID IS NULL
GROUP BY bd.BILL_ID;

UPDATE sql_Inventory.Product p
JOIN cart_Details cd ON p.Product_ID = cd.Product_ID
JOIN success_payment sp ON cd.Cart_ID = sp.payment_ID
LEFT JOIN ordered_items oi ON sp.payment_ID = oi.order_ID
SET p.Quantity = p.Quantity - cd.Product_quantity;
COMMIT;
















