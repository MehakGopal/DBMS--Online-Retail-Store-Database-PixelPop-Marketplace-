create database IF NOT EXISTS sql_Inventory;
USE sql_Inventory;


DROP Table IF EXISTS Category;

create table IF NOT EXISTS Category (
	Category_ID INT NOT NULL,
	Category_Name VARCHAR(21) NOT NULL,
	Category_Product_Description  TEXT NOT NULL,
    PRIMARY KEY(Category_ID),
    UNIQUE(Category_Name)
);

insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (1, 'Vegetables and Fruits', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (2, 'Atta and Rice', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (3, 'Dals', 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (4, 'Dry Fruits', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (5, 'Oils', 'arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (6, 'Dairy', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (7, 'Instant Food', 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (8, 'Chocolates', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (9, 'Deserts', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (10, 'Snacks', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (11, 'Soft Drinks', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (12, 'Cereals', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (13, 'Sauces and Spreads', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (14, 'Bakery', 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (15, 'Pharma and Wellness', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (16, 'Stationery', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (17, 'Pet Care', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (18, 'Cleaning Essentials', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (19, 'Alcohol', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (20, 'Clothes', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede');
insert into Category (Category_ID, Category_Name, Category_Product_Description ) values (21, 'Sports', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor');


create table IF NOT EXISTS Product (
	Product_ID INT AUTO_INCREMENT,
	Category_ID INT NOT NULL,
	Product_Name VARCHAR(50) NOT NULL,
	Product_Description  TEXT NOT NULL,
	Price  INT NOT NULL,
	Quantity INT NOT NULL,
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID) ON UPDATE CASCADE
        ON DELETE CASCADE,
    PRIMARY KEY(Product_ID),
    UNIQUE(Product_Name)
    
);

CREATE VIEW CategoryView AS
SELECT * FROM Category;
CREATE VIEW ProductView AS
SELECT * FROM Product;



DELIMITER $$
CREATE TRIGGER trigger_name
BEFORE UPDATE ON sql_inventory.Product
FOR EACH ROW
BEGIN
    IF NEW.Quantity <=0 THEN
        SET NEW.Quantity = 0;
    END IF;
END $$
DELIMITER ;

-- DELIMITER $$
-- CREATE TRIGGER trigger_name
-- BEFORE UPDATE ON sql_inventory.Product
-- FOR EACH ROW
-- BEGIN
-- 	IF IN_Transaction() then
-- 		If new.quantity<0 then
-- 			delete from sql_inventory.product where product
--     IF NEW.Quantity < 0 THEN
--         SET NEW.Quantity = OLD.Quantity;
--     ELSEIF NEW.Quantity >= 0 THEN
--         SET NEW.Quantity = OLD.Quantity + NEW.Quantity;
--     END IF;
-- END $$
-- DELIMITER ;


INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 7, 'Filter - Coffee', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 3185, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 2, 'Peas Snow', 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', 8061, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values (10, 'Icecream Bar - Del Monte', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', 8717, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 10, 'Pastry - Cheese Baked Scones', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', 9764, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 19, 'Wine - Cotes Du Rhone', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', 2116, 6);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 3, 'Wine - Red, Metus Rose', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 2882, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Papadam', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut', 3057, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 16, 'Mushrooms - Honey', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 7133, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 10, 'Arizona - Plum Green Tea', 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 2777, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Cheese - Cottage Cheese', 'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est', 9002, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 10, 'Juice - Lime', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 9647, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 4, 'Ice Cream Bar - Hagen Daz', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 5296, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 17, 'Pastry - Chocolate Marble Tea', 'bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 3577, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 6, 'Soup - Campbells Pasta Fagioli', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', 2782, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 5, 'Chocolate Bar - Smarties', 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', 4812, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 8, 'Bagel - Plain', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 474, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 20, 'Sandwich Wrap', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 8431, 6);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 10, 'Berry Brulee', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 9473, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Salmon - Fillets', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 9188, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 17, 'Rum - Light, Captain Morgan', 'semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 5760, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 2, 'Cheese - Comtomme', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', 3429, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 8, 'Sping Loaded Cup Dispenser', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus', 5047, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 20, 'Praline Paste', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in', 9771, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 14, 'Grapefruit - Pink', 'rutrum neque aenean auctor gravida sem praesent id massa id nisl', 402, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 12, 'Sobe - Cranberry Grapefruit', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 5574, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 7, 'Pepper - Cayenne', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', 734, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 16, 'Jack Daniels', 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 3954, 6);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Beer - Blue Light', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', 1218, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 11, 'Wine - Gewurztraminer Pierre', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', 2252, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Contreau', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 2860, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 11, 'Chips Potato Reg 43g', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 3955, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 14, 'Cheese - Montery Jack', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam', 111, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 19, 'Tart Shells - Barquettes, Savory', 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 3794, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values (12, 'Smoked Paprika', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', 3937, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Cheese - Jack', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 1928, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 14, 'Carbonated Water - Blackberry', 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue', 6029, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 6, 'Kahlua', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', 261, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 6, 'Pepper - Chipotle, Canned', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 4308, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 18, 'Petite Baguette', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 7501, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 21, 'Juice - Tomato, 48 Oz', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum', 8863, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Bread Base - Italian', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', 103, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 18, 'Table Cloth 91x91 Colour', 'dui proin leo odio porttitor id consequat in consequat ut', 9209, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 20, 'Red Cod Fillets - 225g', 'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', 9241, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Beer - Corona', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 8117, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 3, 'Wine - Barbera Alba Doc 2001', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a', 5404, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 19, 'Bread - Rolls, Rye', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', 6562, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 15, 'Bar - Sweet And Salty Chocolate', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 7098, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 14, 'Pork - Bones', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 7938, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 8, 'Bouq All Italian - Primerba', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', 1786, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Chinese Lemon Pork', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', 9819, 6);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 5, 'Foam Tray S2', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', 3056, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 18, 'Couscous', 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 3706, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 8, 'Pork Loin Bine - In Frenched', 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', 1888, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 2, 'Melon - Watermelon Yellow', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', 1153, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 15, 'French Pastry - Mini Chocolate', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', 4234, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 20, 'Mace', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 6211, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 4, 'Waffle Stix', 'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 932, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 19, 'Zucchini - Yellow', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 1598, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 8, 'Lettuce - Spring Mix', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 3543, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 1, 'Compound - Raspberry', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', 3968, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 7, 'Apples - Wedge', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', 2961, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values (8, 'Ham - Cooked Bayonne Tinned', 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', 641, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 4, 'Potatoes - Purple, Organic', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', 5183, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 7, 'Jolt Cola - Red Eye', 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', 5787, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 18, 'Baking Powder', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', 2579, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 4, 'Wine - Manischewitz Concord', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', 3202, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 12, 'Croissant, Raw - Mini', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', 9665, 6);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 15, 'Initation Crab Meat', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 9367, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Radish - Black, Winter, Organic', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', 3989, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Bread - Olive Dinner Roll', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in', 366, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 14, 'Oil - Cooking Spray', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', 2404, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Apples - Sliced / Wedge', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 392, 5);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 6, 'Sauce - Cranberry', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', 6137, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Wine - Pinot Noir Latour', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est', 8236, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 3, 'Soup - French Onion', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 9523, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 12, 'Rice - Sushi', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 4824, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 15, 'Lamb Rack - Ontario', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', 6394, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values (9, 'Kippers - Smoked', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', 1338, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 10, 'Glass - Wine, Plastic, Clear 5 Oz', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', 4380, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 15, 'Spring Roll Wrappers', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', 2194, 6);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 3, 'Muffin Batt - Choc Chk', 'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', 6332, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 16, 'Ostrich - Fan Fillet', 'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at', 5950, 7);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 9, 'Peas - Frozen', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', 8556, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 21, 'Cocoa Powder - Natural', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 4718, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 6, 'Pasta - Spaghetti, Dry', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 6968, 10);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 3, 'Jello - Assorted', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 9174, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 16, 'Lid Tray - 12in Dome', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', 4416, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values (20, 'Flour Pastry Super Fine', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 8233, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values (19, 'Liners - Banana, Paper', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 3172, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 12, 'Lettuce - Arugula', 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 6693, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 5, 'Tomatoes - Orange', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 1443, 1);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 4, 'Truffle Shells - Semi - Sweet', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', 2357, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 20, 'Cattail Hearts', 'quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 6144, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 18, 'Ecolab Silver Fusion', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed', 6217, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 19, 'Soup - Knorr, Chicken Gumbo', 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 9092, 3);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 4, 'Cake Slab', 'dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', 9616, 8);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 13, 'Nectarines', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', 119, 4);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 10, 'Beef Cheek Fresh', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse', 7891, 9);
INSERT INTO Product (Category_ID, Product_Name, Product_Description , Price, Quantity) values ( 19, 'Glass Clear 7 Oz Xl', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', 9037, 2);
INSERT INTO Product (Category_ID, Product_Name, Product_Description, Price, Quantity) values ( 20, 'Beef Striploin Aaa', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla', 1755, 4);
# Rows:


create table if not exists prod_contains(
Category_ID INT NOT NULL,
Product_ID INT NOT NULL,
FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)ON UPDATE CASCADE
        ON DELETE CASCADE,
FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID) ON UPDATE CASCADE
        ON DELETE CASCADE

);
insert into prod_contains (Product_ID, Category_ID) values (1, 10);
insert into prod_contains (Product_ID, Category_ID) values (2, 19);
insert into prod_contains (Product_ID, Category_ID) values (3, 20);
insert into prod_contains (Product_ID, Category_ID) values (4, 12);
insert into prod_contains (Product_ID, Category_ID) values (5, 15);
insert into prod_contains (Product_ID, Category_ID) values (6, 11);
insert into prod_contains (Product_ID, Category_ID) values (7, 6);
insert into prod_contains (Product_ID, Category_ID) values (8, 14);
insert into prod_contains (Product_ID, Category_ID) values (9, 18);
insert into prod_contains (Product_ID, Category_ID) values (10, 3);
insert into prod_contains (Product_ID, Category_ID) values (11, 6);
insert into prod_contains (Product_ID, Category_ID) values (12, 6);
insert into prod_contains (Product_ID, Category_ID) values (13, 2);
insert into prod_contains (Product_ID, Category_ID) values (14, 19);
insert into prod_contains (Product_ID, Category_ID) values (15, 20);
insert into prod_contains (Product_ID, Category_ID) values (16, 9);
insert into prod_contains (Product_ID, Category_ID) values (17, 21);
insert into prod_contains (Product_ID, Category_ID) values (18, 1);
insert into prod_contains (Product_ID, Category_ID) values (19, 9);
insert into prod_contains (Product_ID, Category_ID) values (20, 10);
insert into prod_contains (Product_ID, Category_ID) values (21, 14);
insert into prod_contains (Product_ID, Category_ID) values (22, 16);
insert into prod_contains (Product_ID, Category_ID) values (23, 10);
insert into prod_contains (Product_ID, Category_ID) values (24, 13);
insert into prod_contains (Product_ID, Category_ID) values (25, 12);
insert into prod_contains (Product_ID, Category_ID) values (26, 19);
insert into prod_contains (Product_ID, Category_ID) values (27, 13);
insert into prod_contains (Product_ID, Category_ID) values (28, 15);
insert into prod_contains (Product_ID, Category_ID) values (29, 8);
insert into prod_contains (Product_ID, Category_ID) values (30, 6);
insert into prod_contains (Product_ID, Category_ID) values (31, 4);
insert into prod_contains (Product_ID, Category_ID) values (32, 16);
insert into prod_contains (Product_ID, Category_ID) values (33, 2);
insert into prod_contains (Product_ID, Category_ID) values (34, 8);
insert into prod_contains (Product_ID, Category_ID) values (35, 9);
insert into prod_contains (Product_ID, Category_ID) values (36, 4);
insert into prod_contains (Product_ID, Category_ID) values (37, 9);
insert into prod_contains (Product_ID, Category_ID) values (38, 5);
insert into prod_contains (Product_ID, Category_ID) values (39, 9);
insert into prod_contains (Product_ID, Category_ID) values (40, 19);
insert into prod_contains (Product_ID, Category_ID) values (41, 11);
insert into prod_contains (Product_ID, Category_ID) values (42, 3);
insert into prod_contains (Product_ID, Category_ID) values (43, 14);
insert into prod_contains (Product_ID, Category_ID) values (44, 13);
insert into prod_contains (Product_ID, Category_ID) values (45, 8);
insert into prod_contains (Product_ID, Category_ID) values (46, 9);
insert into prod_contains (Product_ID, Category_ID) values (47, 13);
insert into prod_contains (Product_ID, Category_ID) values (48, 13);
insert into prod_contains (Product_ID, Category_ID) values (49, 7);
insert into prod_contains (Product_ID, Category_ID) values (50, 12);
insert into prod_contains (Product_ID, Category_ID) values (51, 20);
insert into prod_contains (Product_ID, Category_ID) values (52, 20);
insert into prod_contains (Product_ID, Category_ID) values (53, 10);
insert into prod_contains (Product_ID, Category_ID) values (54, 5);
insert into prod_contains (Product_ID, Category_ID) values (55, 3);
insert into prod_contains (Product_ID, Category_ID) values (56, 4);
insert into prod_contains (Product_ID, Category_ID) values (57, 17);
insert into prod_contains (Product_ID, Category_ID) values (58, 8);
insert into prod_contains (Product_ID, Category_ID) values (59, 7);
insert into prod_contains (Product_ID, Category_ID) values (60, 17);
insert into prod_contains (Product_ID, Category_ID) values (61, 16);
insert into prod_contains (Product_ID, Category_ID) values (62, 8);
insert into prod_contains (Product_ID, Category_ID) values (63, 10);
insert into prod_contains (Product_ID, Category_ID) values (64, 21);
insert into prod_contains (Product_ID, Category_ID) values (65, 16);
insert into prod_contains (Product_ID, Category_ID) values (66, 13);
insert into prod_contains (Product_ID, Category_ID) values (67, 20);
insert into prod_contains (Product_ID, Category_ID) values (68, 8);
insert into prod_contains (Product_ID, Category_ID) values (69, 14);
insert into prod_contains (Product_ID, Category_ID) values (70, 18);
insert into prod_contains (Product_ID, Category_ID) values (71, 9);
insert into prod_contains (Product_ID, Category_ID) values (72, 12);
insert into prod_contains (Product_ID, Category_ID) values (73, 3);
insert into prod_contains (Product_ID, Category_ID) values (74, 7);
insert into prod_contains (Product_ID, Category_ID) values (75, 20);
insert into prod_contains (Product_ID, Category_ID) values (76, 13);
insert into prod_contains (Product_ID, Category_ID) values (77, 4);
insert into prod_contains (Product_ID, Category_ID) values (78, 6);
insert into prod_contains (Product_ID, Category_ID) values (79, 15);
insert into prod_contains (Product_ID, Category_ID) values (80, 20);
insert into prod_contains (Product_ID, Category_ID) values (81, 12);
insert into prod_contains (Product_ID, Category_ID) values (82, 9);
insert into prod_contains (Product_ID, Category_ID) values (83, 15);
insert into prod_contains (Product_ID, Category_ID) values (84, 5);
insert into prod_contains (Product_ID, Category_ID) values (85, 14);
insert into prod_contains (Product_ID, Category_ID) values (86, 19);
insert into prod_contains (Product_ID, Category_ID) values (87, 4);
insert into prod_contains (Product_ID, Category_ID) values (88, 19);
insert into prod_contains (Product_ID, Category_ID) values (89, 15);
insert into prod_contains (Product_ID, Category_ID) values (90, 7);
insert into prod_contains (Product_ID, Category_ID) values (91, 3);
insert into prod_contains (Product_ID, Category_ID) values (92, 18);
insert into prod_contains (Product_ID, Category_ID) values (93, 10);
insert into prod_contains (Product_ID, Category_ID) values (94, 18);
insert into prod_contains (Product_ID, Category_ID) values (95, 2);
insert into prod_contains (Product_ID, Category_ID) values (96, 10);
insert into prod_contains (Product_ID, Category_ID) values (97, 18);
insert into prod_contains (Product_ID, Category_ID) values (98, 13);
insert into prod_contains (Product_ID, Category_ID) values (99, 4);
insert into prod_contains (Product_ID, Category_ID) values (100, 19);

START TRANSACTION;

INSERT INTO sql_Inventory.Product (Category_ID, Product_Name, Product_Description, Price, Quantity)
SELECT 21, "fffff", "fdfdfdf", 34, 5
FROM (SELECT 1) AS dummy
WHERE EXISTS (SELECT 1 FROM sql_Inventory.Category WHERE Category_ID = 21);

SET @last_product_id = LAST_INSERT_ID();

INSERT INTO prod_contains (Category_ID, Product_ID)
VALUES (21, @last_product_id);

COMMIT;


