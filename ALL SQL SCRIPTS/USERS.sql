create DATABASE IF NOT EXISTS   sql_users;

USE sql_users;

DROP TABLE IF EXISTS admin;

create Table if not exists admin(
	user_id varchar(20) not null,
    password varchar(20) not null,
    PRIMARY KEY(user_id)
    );
insert into admin(user_id,password) values ('mehak','1234fff');
insert into admin(user_id,password) values ('nalin','asasasas');



DROP table if exists Delivery_Executive;
create table  if not exists Delivery_Executive (
	agent_id VARCHAR(50) not null ,
	agent_name VARCHAR(50) not null,
	agent_DOB DATE not null,
	agent_email VARCHAR(50) not null,
	agent_gender VARCHAR(50)not null,
	agent_contact_number VARCHAR(50) not null,
	no_of_trips INT,
    Salary INT not null,
    UNIQUE(agent_email),
    UNIQUE(agent_contact_number),
    PRIMARY KEY(agent_id)
);

insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('abenneton3q', 'Byran Macewan', '1957-03-14', 'bmacewan0@harvard.edu', 'Male', '125-725-0911', 174, 13131);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('acoleborn68', 'Lauritz Charle', '1957-10-25', 'lcharle1@csmonitor.com', 'Male', '123-323-7078', 92, 11601);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('adelamere4n', 'Skyler Yeudall', '1978-10-12', 'syeudall2@illinois.edu', 'Male', '399-360-0651', 22, 11920);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('aheigl7n', 'Hollie Cass', '1966-08-08', 'hcass3@artisteer.com', 'Female', '720-470-0553', 102, 10569);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ahollyland5z', 'Clementina Philipp', '1953-04-12', 'cphilipp4@salon.com', 'Female', '727-630-9262', 6, 12123);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ajarman1w', 'Tammy Kosel', '1975-03-05', 'tkosel5@twitpic.com', 'Male', '494-124-8458', 188, 14159);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ameneer6h', 'Shawnee Tutchener', '1999-04-12', 'stutchener6@pbs.org', 'Female', '554-942-9406', 135, 12408);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('apadefield2n', 'Gene McWhirter', '1983-11-17', 'gmcwhirter7@nih.gov', 'Female', '513-191-5540', 113, 13120);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('arahlof25', 'Patrizia Geroldo', '1985-10-08', 'pgeroldo8@trellian.com', 'Female', '438-469-7314', 12, 10856);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('aroddanq', 'Britni Inston', '1990-06-18', 'binston9@clickbank.net', 'Female', '369-524-4750', 10, 14739);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('atripe4h', 'Clemmie Dyter', '1990-06-02', 'cdytera@bandcamp.com', 'Female', '981-646-1998', 34, 10314);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('bcropton52', 'Cad Giannassi', '1999-04-01', 'cgiannassib@cornell.edu', 'Male', '988-702-4085', 50, 12898);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('bdondon12', 'Delila Baile', '1967-02-28', 'dbailec@ibm.com', 'Female', '848-417-0777', 84, 14585);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('bmahaddy88', 'Nancy Manwell', '1990-01-07', 'nmanwelld@alexa.com', 'Female', '220-453-0474', 59, 14723);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ccoucha18', 'Kelci Hallyburton', '1998-04-16', 'khallyburtone@unblog.fr', 'Female', '915-152-6716', 172, 14892);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('chalcro7k', 'Verine Stitch', '1965-10-15', 'vstitchf@wikispaces.com', 'Female', '210-370-1421', 175, 14254);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('cleeson7w', 'Noak Flatman', '1989-01-01', 'nflatmang@hugedomains.com', 'Male', '754-900-8278', 55, 11649);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('cmacgilfoyle4t', 'Chaim Mazzilli', '1966-09-08', 'cmazzillih@1und1.de', 'Male', '246-644-9147', 105, 10533);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('colech4w', 'Jacinda McNeigh', '1967-12-29', 'jmcneighi@jiathis.com', 'Female', '641-728-6638', 130, 13768);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('cruberti3k', 'Mufinella Lavigne', '1952-04-18', 'mlavignej@hibu.com', 'Female', '850-821-5825', 31, 10784);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('cspatig1t', 'Dara Dilley', '2003-11-20', 'ddilleyk@altervista.org', 'Female', '477-930-5892', 176, 12025);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('cwinterscale3w', 'Ethelind Shewan', '1969-02-07', 'eshewanl@bbb.org', 'Female', '923-808-9510', 121, 13515);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('danderer48', 'Dara Fugere', '1959-01-15', 'dfugerem@artisteer.com', 'Female', '267-977-4779', 4, 14937);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('dburge45', 'Kat Callinan', '1984-04-20', 'kcallinann@liveinternet.ru', 'Female', '262-222-6252', 96, 14613);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('dcuttler3b', 'Lindy Everley', '1974-12-29', 'leverleyo@abc.net.au', 'Male', '859-383-7501', 56, 11121);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('dguilloux32', 'Jerrold Behninck', '1952-09-26', 'jbehninckp@google.com.hk', 'Male', '419-148-5454', 94, 14187);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('dmee2h', 'Averell Mash', '1957-11-20', 'amashq@xrea.com', 'Male', '529-598-4838', 121, 13449);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('dramsdale5t', 'Alyosha Adriani', '1956-08-30', 'aadrianir@prlog.org', 'Male', '182-167-2990', 46, 11186);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('eardlingk', 'Roseanne Prandy', '1990-02-24', 'rprandys@uiuc.edu', 'Female', '644-985-1708', 82, 10907);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('edehooche', 'Sophey Read', '1976-05-16', 'sreadt@newsvine.com', 'Female', '198-257-8282', 73, 14563);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('eizak5e', 'Sally Kleynen', '1988-06-10', 'skleynenu@cam.ac.uk', 'Female', '688-592-3347', 34, 14570);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('epiolli1z', 'Briana Walsh', '1958-08-22', 'bwalshv@bizjournals.com', 'Female', '541-670-9203', 199, 13340);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('etungay2k', 'Fernanda Chezelle', '1992-07-26', 'fchezellew@drupal.org', 'Female', '367-501-7750', 188, 14205);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ewinson1q', 'Werner Ziemens', '1976-09-28', 'wziemensx@pcworld.com', 'Male', '959-184-0305', 85, 14482);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('fnaseby5q', 'Urban Kewish', '1981-08-11', 'ukewishy@sphinn.com', 'Male', '863-610-7452', 28, 14932);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('gpennington5n', 'Husain Aykroyd', '1982-02-17', 'haykroydz@yahoo.co.jp', 'Male', '172-507-5706', 170, 14066);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('gtal72', 'Sascha Blankhorn', '1979-08-30', 'sblankhorn10@imdb.com', 'Female', '215-787-1300', 161, 11620);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('gyegorev1b', 'Meyer Winters', '1965-04-29', 'mwinters11@woothemes.com', 'Male', '466-808-9866', 77, 11756);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('hchisolm55', 'Kitty Pavelin', '1992-02-07', 'kpavelin12@sphinn.com', 'Female', '205-285-9381', 189, 10588);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('hfutcher6w', 'Karlie Rowlatt', '1988-06-16', 'krowlatt13@ifeng.com', 'Female', '604-797-3794', 183, 14509);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('hshellibeer62', 'Kerwin Crowson', '1999-01-05', 'kcrowson14@list-manage.com', 'Male', '484-562-6947', 41, 12123);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jchesters7h', 'Carlee Kumar', '1998-12-25', 'ckumar15@tamu.edu', 'Female', '414-641-9811', 23, 13771);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jhaps4k', 'Maxi Zeplin', '1989-12-04', 'mzeplin16@baidu.com', 'Female', '734-945-9844', 119, 12561);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jhinken2b', 'Melli Behne', '1978-10-29', 'mbehne17@tmall.com', 'Female', '475-399-7245', 94, 14947);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jkingsly1k', 'Clarita Jorge', '1964-04-08', 'cjorge18@shutterfly.com', 'Female', '655-378-9755', 72, 13133);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jlaycock1n', 'Frederique Gilvear', '1969-02-27', 'fgilvear19@dot.gov', 'Female', '419-897-3811', 140, 10371);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jlyver6q', 'Von Codling', '1975-12-05', 'vcodling1a@ovh.net', 'Male', '874-947-0392', 22, 10371);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('joheffernan85', 'Benedikta Sunley', '1973-08-19', 'bsunley1b@discuz.net', 'Female', '577-987-7643', 38, 10046);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('jvarcoe6e', 'Myrtie Fedorchenko', '1999-09-13', 'mfedorchenko1c@ning.com', 'Female', '655-459-2612', 95, 10774);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('kgooley6b', 'Niel Belcham', '1975-02-15', 'nbelcham1d@nsw.gov.au', 'Male', '679-250-1336', 125, 10097);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('krackstraw6n', 'Boycie Benjamin', '1956-12-15', 'bbenjamin1e@tinypic.com', 'Male', '536-181-9961', 185, 11339);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('kropking3z', 'Carolann Greguol', '1964-05-07', 'cgreguol1f@sciencedirect.com', 'Female', '803-560-0151', 172, 11597);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('lcarver1h', 'Hasty Garci', '1965-12-01', 'hgarci1g@prlog.org', 'Male', '846-460-1235', 61, 14247);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('lkellard2t', 'Christian McKeefry', '1953-01-10', 'cmckeefry1h@bandcamp.com', 'Female', '118-780-8757', 57, 10863);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('lloughhead75', 'Teriann Denmead', '1964-02-01', 'tdenmead1i@berkeley.edu', 'Female', '455-842-8877', 112, 11511);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('lskirving5w', 'Jemimah Jeacocke', '1955-06-18', 'jjeacocke1j@dmoz.org', 'Female', '199-400-8393', 105, 11768);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('mcobbled3n', 'Winfred Elgy', '1971-09-05', 'welgy1k@tripod.com', 'Male', '749-663-5140', 136, 11733);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('mellam4z', 'Charlton Laye', '1984-12-29', 'claye1l@amazon.com', 'Male', '396-438-3962', 160, 12417);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('modunneen7b', 'Penny Paulmann', '1992-06-16', 'ppaulmann1m@foxnews.com', 'Male', '959-965-8171', 68, 13020);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('mpurches2e', 'Dionne Shadbolt', '1988-04-20', 'dshadbolt1n@gravatar.com', 'Female', '965-368-7959', 61, 10450);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('msextie6k', 'Wilmar Marchelli', '1990-08-26', 'wmarchelli1o@alibaba.com', 'Male', '278-557-6069', 139, 10949);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('mtwining5h', 'Micheil Kerman', '1958-08-06', 'mkerman1p@flickr.com', 'Male', '288-148-8240', 130, 12136);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('nackenson3h', 'Leigha Colbridge', '1956-04-16', 'lcolbridge1q@patch.com', 'Female', '826-820-5982', 14, 14525);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ncheesley2', 'Giavani Durman', '1984-05-03', 'gdurman1r@trellian.com', 'Male', '555-820-5532', 130, 13548);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ncraydon42', 'Ainslee Senyard', '1980-11-03', 'asenyard1s@usgs.gov', 'Female', '776-293-4569', 77, 12041);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ndarthe2w', 'Tracy De Filippo', '1968-11-22', 'tde1t@technorati.com', 'Male', '521-353-5914', 152, 10721);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('nflipsen1e', 'Arlen Lindelof', '1970-01-06', 'alindelof1u@github.io', 'Male', '122-708-7231', 59, 12206);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('nsheeringh', 'Marti Dimitrov', '1973-12-29', 'mdimitrov1v@businessinsider.com', 'Female', '984-796-2322', 7, 13347);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('oasbery7e', 'Mercedes Dunthorn', '1958-12-25', 'mdunthorn1w@yale.edu', 'Female', '512-233-0164', 132, 13507);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('ogreedyer5b', 'Zacharie Bourton', '1997-06-18', 'zbourton1x@skyrock.com', 'Male', '708-625-7002', 47, 14488);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('olalor3t', 'Angelina Tunnick', '1961-08-02', 'atunnick1y@slashdot.org', 'Female', '315-752-2387', 186, 13895);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('opauly8b', 'Dick Tirrell', '1967-12-01', 'dtirrell1z@accuweather.com', 'Male', '359-455-4743', 52, 14102);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('oshowte3e', 'Hubert Newlyn', '1973-06-19', 'hnewlyn20@ebay.com', 'Male', '132-951-0668', 30, 10204);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('pcamilleri7z', 'Muriel Paling', '1998-08-22', 'mpaling21@alibaba.com', 'Female', '887-450-0848', 64, 14756);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('pjezzardt', 'Annie Rupke', '1998-01-24', 'arupke22@sphinn.com', 'Female', '598-432-2449', 50, 12148);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('pminget82', 'Andre Vido', '1991-04-25', 'avido23@google.com', 'Male', '751-585-1527', 131, 13290);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('raspinal4q', 'Thedrick Ewbach', '1955-05-05', 'tewbach24@google.ru', 'Male', '793-347-0619', 66, 13323);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('rberic58', 'Bernetta Troctor', '1987-10-20', 'btroctor25@weibo.com', 'Female', '485-918-2195', 16, 12998);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('rbyfford4e', 'Hertha Wooton', '2003-03-14', 'hwooton26@ezinearticles.com', 'Female', '588-482-3441', 37, 11632);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('rmiddletonw', 'Gerladina Emeney', '1950-06-05', 'gemeney27@archive.org', 'Female', '388-932-9287', 116, 13143);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('rstleger2z', 'Melva Melato', '1967-08-10', 'mmelato28@sphinn.com', 'Female', '792-992-2975', 132, 11298);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('sdradey7q', 'Quentin Rickwood', '1992-08-18', 'qrickwood29@digg.com', 'Male', '873-453-1579', 38, 14069);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('semig78', 'Ossie Moreinis', '1963-04-20', 'omoreinis2a@independent.co.uk', 'Male', '526-694-4529', 32, 14919);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('shackletonn', 'Fannie Franek', '1998-12-28', 'ffranek2b@hostgator.com', 'Female', '211-386-6637', 99, 11007);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('shuyhton5k', 'Delmore Arens', '1952-12-12', 'darens2c@answers.com', 'Male', '229-202-6272', 150, 14344);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('siredellb', 'Remy Kilshall', '2000-12-26', 'rkilshall2d@archive.org', 'Female', '520-798-3582', 195, 10063);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('slisciandri5', 'Joete Blissett', '1987-12-06', 'jblissett2e@cmu.edu', 'Female', '212-185-7901', 146, 11539);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('srains2q', 'Karrie Castano', '1953-09-02', 'kcastano2f@cnn.com', 'Female', '507-153-2171', 190, 12191);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('sshetliff22', 'Durant Sutor', '2003-05-05', 'dsutor2g@elegantthemes.com', 'Male', '383-779-5827', 179, 14928);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('sskuce28', 'Taite Wudeland', '1988-07-30', 'twudeland2h@wisc.edu', 'Male', '570-632-5459', 80, 12220);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('tcolin6t', 'Dunc Affleck', '2003-10-29', 'daffleck2i@wordpress.org', 'Male', '659-522-2032', 94, 14581);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('tenglishby8', 'Isador Hutson', '1969-09-15', 'ihutson2j@cmu.edu', 'Male', '634-328-7915', 88, 11193);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('tkidstounz', 'Aubry Tolliday', '1973-08-04', 'atolliday2k@economist.com', 'Female', '759-537-6990', 124, 11904);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('tpriestman38', 'Shayne Curedell', '1952-08-17', 'scuredell2l@chronoengine.com', 'Male', '638-420-2969', 48, 10871);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('uwhayman6z', 'Anica Lapere', '1958-06-11', 'alapere2m@t.co', 'Female', '115-651-8923', 29, 14040);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('vlangstaff65', 'La verne Neubigin', '1999-03-24', 'lverne2n@artisteer.com', 'Female', '476-811-1591', 197, 11198);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('wcaught15', 'Sholom MacMenamin', '1965-04-17', 'smacmenamin2o@google.co.jp', 'Male', '398-770-8754', 3, 13530);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('wcersey7t', 'Harland Leathart', '1958-12-26', 'hleathart2p@state.gov', 'Male', '375-452-6984', 181, 13832);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('wdebischof4b', 'Nefen Litster', '1970-07-12', 'nlitster2q@mashable.com', 'Male', '806-197-9395', 48, 12242);
insert into Delivery_Executive (agent_id, agent_name, agent_DOB, agent_email, agent_gender, agent_contact_number, no_of_trips, Salary) values ('zblumire35', 'Jandy Gurry', '1985-10-15', 'jgurry2r@clickbank.net', 'Female', '570-352-1548', 178, 12099);


create table if not exists customer (
	customer_id VARCHAR(50) not null,
	customer_name VARCHAR(50) not null,
	DOB DATE not null,
	customer_email VARCHAR(50)not null,
	customer_contact_number VARCHAR(50)not null,
	address VARCHAR(50)not null,
	pincode INT not null,
    PRIMARY KEY(customer_id),
    UNIQUE(customer_email),
    UNIQUE(customer_contact_number)
    

);

insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('agreguoli5l', 'Maighdiln Bramwell', '1975-09-22', 'ygriss0@typepad.com', '868-641-2992', 'Apt 164', '26459');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('aholcroft5i', 'Dinnie Ingolotti', '1986-11-20', 'dkubecka1@privacy.gov.au', '507-774-0894', 'Room 379', '10423');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('aknagges40', 'Ericka Castellet', '1987-02-03', 'jmcmychem2@e-recht24.de', '453-393-7431', '2nd Floor', '05879');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('akollasch2f', 'Elberta Ballintime', '1976-07-29', 'vclow3@ustream.tv', '172-590-4684', 'Room 1414', '36931');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('apibsworth29', 'Jeddy Eccleston', '1987-12-22', 'acrighton4@etsy.com', '841-104-2314', 'PO Box 19933', '70255');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('apoe7c', 'Craggy Purser', '1972-09-17', 'mbavester5@alexa.com', '608-835-1400', 'PO Box 19344', '57210');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('aseabrocke56', 'Amalea Schuricht', '2003-02-21', 'sdudney6@arstechnica.com', '568-659-4854', 'Apt 350', '43786');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('astapley2c', 'Virginie Bultitude', '1985-03-15', 'cverlinde7@mtv.com', '635-755-7869', '2nd Floor', '95032');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('awatheyr', 'Jennette Parnall', '1995-07-17', 'lbarnshaw8@surveymonkey.com', '237-733-7409', 'Suite 44', '34653');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('balflatt20', 'Kimmie Belf', '1983-04-07', 'hcommin9@bloglines.com', '273-153-9414', 'Apt 474', '83708');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('bbouchard3c', 'Eleanora Stubley', '1993-09-13', 'pbartolommeoa@digg.com', '914-707-7137', 'Suite 76', '49681');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('bbowkley6i', 'Britteny Lockhart', '2000-12-03', 'tleyb@issuu.com', '487-844-5144', 'Room 1932', '88483');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('bduce5c', 'Geno Volkes', '1983-10-01', 'rentwistlec@uiuc.edu', '153-861-3471', 'Suite 11', '90052');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('bnesterov5u', 'Niven Faiers', '1987-09-22', 'dhinged@indiegogo.com', '129-642-8294', '20th Floor', '90465');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('boneligan6l', 'Rae Tue', '1970-07-31', 'ktreweelae@cyberchimps.com', '876-950-8664', 'Apt 1549', '57714');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cblaxton7i', 'Peta Twigley', '1976-12-15', 'smoringf@over-blog.com', '242-821-8614', '12th Floor', '55068');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cemilien3i', 'Gweneth Greest', '1975-04-11', 'ygravestong@blogspot.com', '770-472-4377', 'Room 1911', '30992');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cfishpoole2l', 'Leanor Hapgood', '1984-08-02', 'whounsomh@wikipedia.org', '661-350-0835', 'Room 1787', '33771');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cfloresu', 'Astrix Salman', '1975-08-05', 'kdehmeli@auda.org.au', '966-579-2214', 'Apt 1291', '79827');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cgudgen73', 'David Tallet', '1991-11-10', 'afillanj@histats.com', '802-405-1750', '18th Floor', '34353');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cgullis4i', 'Derrik Allitt', '1972-12-17', 'aadlemk@who.int', '412-109-4917', 'Apt 1094', '35109');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ckinnaird1c', 'Cally Harnwell', '2003-08-16', 'mmortelll@epa.gov', '696-251-5453', '20th Floor', '77677');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cliell13', 'Lucais Linturn', '1999-02-23', 'emarringtonm@dedecms.com', '541-431-1247', 'Suite 10', '43077');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cmacilwrick1i', 'Gothart Nealey', '1992-05-05', 'drenggern@twitter.com', '465-331-6668', 'Suite 54', '86077');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cmcmenemy19', 'Kelcy Rays', '1971-09-22', 'lgarro@sciencedirect.com', '785-427-9707', 'Suite 54', '64350');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cmcnaught6f', 'Theressa Gierardi', '1988-07-04', 'wtomsup@mtv.com', '914-572-3564', 'Apt 1828', '37038');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('csherbrooke4f', 'Normie Vella', '1985-08-19', 'nogilvyq@dropbox.com', '421-985-5563', '15th Floor', '23349');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ctrowell7r', 'Godwin McFfaden', '1996-06-01', 'hplaicer@shareasale.com', '137-378-7850', 'Suite 86', '02637');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('cwanderschek6o', 'Dinnie Issacoff', '1984-08-03', 'bbasfords@goo.ne.jp', '727-919-4593', 'Apt 301', '74486');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('dbains23', 'Electra Lukehurst', '1973-12-09', 'ileftleyt@abc.net.au', '164-961-6229', 'Suite 70', '37790');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('dbelcher66', 'Tobias Chesher', '1979-12-30', 'hhandmoreu@google.co.jp', '333-815-9999', 'Apt 599', '99443');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('dfeatherbyl', 'Penn Chown', '1990-09-07', 'fiannellov@blogger.com', '679-534-4871', 'PO Box 43784', '58996');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('dpottageo', 'Kenton Hayles', '1982-04-10', 'dpleasew@gov.uk', '456-808-5589', 'Suite 63', '52864');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('dsivill1o', 'Fons Harverson', '1977-07-12', 'rmcarthurx@eepurl.com', '335-169-0510', 'Apt 850', '99068');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ecochet7x', 'Neila Brader', '1990-06-11', 'jkisbeey@tmall.com', '446-956-8794', '5th Floor', '26635');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('aa', 'Theresina Zarfat', '1981-05-25', 'pspeechlyz@cbsnews.com', '601-374-9614', '17th Floor', '79025');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('gphelips79', 'Jasen Hanny', '2000-12-05', 'mskipper10@amazon.co.jp', '942-864-3053', 'Room 260', '77315');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('gtrimby3o', 'Jerry Hevner', '1977-12-26', 'tfostersmith11@nhs.uk', '834-648-1719', 'Room 1535', '70826');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('hderechter2u', 'Mendie Kirkup', '1992-10-03', 'rhaugh12@sun.com', '667-696-0569', 'Apt 177', '17593');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('hgonthard7l', 'Alonzo Matczak', '1985-08-11', 'cmacewan13@nasa.gov', '109-182-4427', 'PO Box 12998', '55576');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('hjakoviljevic4x', 'Brittney Kleszinski', '1999-06-05', 'kgreenless14@walmart.com', '747-657-2844', '3rd Floor', '18932');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('hmackerley3j', 'Livvie Killingbeck', '1981-02-02', 'zgerant15@csmonitor.com', '506-634-5321', '8th Floor', '81483');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('htoe6', 'Elyse Berkelay', '1992-11-13', 'olendrem16@msn.com', '513-607-7725', '3rd Floor', '10511');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ideekes80', 'Lishe Dooley', '1987-07-25', 'kletertre17@sciencedaily.com', '486-735-0977', 'Room 1690', '22563');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jdoore76', 'Christyna Struthers', '1994-07-12', 'cfawckner18@buzzfeed.com', '316-340-0646', 'Room 193', '42760');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jkingscottc', 'Enrica Neville', '1981-01-12', 'ybinnie19@blogspot.com', '320-381-8137', 'PO Box 38924', '19637');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jknok4o', 'Ronnica Simonyi', '1996-04-12', 'ccurrm1a@nyu.edu', '317-918-2340', 'Apt 983', '19384');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jocorren3u', 'Justino Hevey', '1999-10-08', 'mgoakes1b@behance.net', '803-400-1506', '15th Floor', '21042');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jpumfrey49', 'Robinson Livezley', '1986-06-29', 'oyosifov1c@phoca.cz', '565-331-6768', 'Room 1197', '59917');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jricards4l', 'Audy Adriano', '1986-12-29', 'bredhouse1d@fc2.com', '117-389-9256', 'Suite 26', '90052');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('jsokale6r', 'Augustus Ugo', '1996-09-02', 'mivashov1e@yellowpages.com', '280-727-6732', '20th Floor', '79534');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('kfitchell1u', 'Jennica Giffaut', '1992-10-20', 'fwimpenny1f@bbb.org', '991-980-2651', '20th Floor', '70819');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('kmeegin26', 'Melodee Wones', '1997-06-03', 'eseston1g@tripadvisor.com', '414-692-9724', 'Suite 27', '13682');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('knewart6x', 'Cornelius Message', '1971-11-29', 'rpickhaver1h@unesco.org', '645-405-1943', 'PO Box 80063', '21786');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('koakey1f', 'Lindy Angier', '1976-05-13', 'eleamon1i@google.es', '363-707-0868', 'Suite 17', '42199');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('leykel30', 'Terri Melonby', '1975-09-27', 'pmacshirie1j@usa.gov', '662-725-6229', '1st Floor', '08902');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('lgonning2x', 'Marlo Alexandersen', '1972-04-22', 'keckart1k@nbcnews.com', '414-940-7024', 'Room 1233', '20918');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('lmackonochie4u', 'Hamnet Wrought', '2003-10-10', 'rbroomer1l@washington.edu', '859-810-5052', 'Apt 1256', '75243');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('lseamans2r', 'Alfonso Razoux', '1980-08-21', 'cpinkstone1m@hud.gov', '713-408-8891', 'PO Box 71802', '22947');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('lskakunas53', 'Lonee Gainsborough', '1977-03-07', 'bwiggin1n@newsvine.com', '451-273-5476', 'Suite 57', '06531');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('mchasemore83', 'Esme Sleicht', '1975-06-13', 'wwebberley1o@prnewswire.com', '839-817-0160', 'PO Box 9611', '32644');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('mcompfort6c', 'Gonzales Hazelton', '1992-09-17', 'kdewitt1p@pcworld.com', '712-640-6011', 'Apt 553', '31691');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('mdeyes33', 'Rafaello Seppey', '1976-02-03', 'rmcevoy1q@ustream.tv', '635-741-5413', 'PO Box 66232', '93795');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('mferfullei', 'Neysa Munroe', '1978-07-16', 'rboys1r@nasa.gov', '720-927-0067', 'Room 1126', '43336');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('mpover5x', 'Anjanette Thorlby', '1985-12-08', 'sbarbery1s@hud.gov', '654-939-7722', '13th Floor', '19031');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ncardello6u', 'Arnie Curl', '1996-03-05', 'lmurt1t@plala.or.jp', '886-946-5082', 'Apt 1191', '55914');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ncivitillo5r', 'Lucinda Burkett', '1998-11-29', 'ebartrum1u@disqus.com', '425-430-8008', 'Apt 794', '62278');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('nminghetti10', 'Adelind Blackden', '1994-11-28', 'jdemico1v@walmart.com', '817-755-0136', 'PO Box 47288', '39230');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('nmixhel3f', 'Virginie Tie', '1996-03-28', 'sbourdel1w@wikipedia.org', '105-403-6714', 'Room 406', '98427');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('nphizackarley7f', 'Bradney Demageard', '1989-01-14', 'hgrace1x@feedburner.com', '328-590-9853', 'Suite 7', '97244');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('nshawe1r', 'Hi Winkless', '1972-12-22', 'rarmitage1y@arstechnica.com', '296-534-3393', 'Apt 68', '58431');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('nzuker46', 'Elfrieda McAdam', '1983-10-19', 'blampet1z@sciencedaily.com', '224-587-5913', '6th Floor', '53477');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('odawidowitzf', 'Roderick Kuzemka', '2003-11-29', 'eortzen20@people.com.cn', '721-279-5703', 'PO Box 22832', '00491');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('olexa60', 'Petronella Kelley', '1972-10-29', 'glanceter21@dedecms.com', '440-250-7267', 'PO Box 74842', '73761');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ostile5f', 'Belvia Glasbey', '1971-10-15', 'cpaula22@ted.com', '534-936-7347', '7th Floor', '54350');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('pstratten86', 'Ferdie Sheirlaw', '1991-05-20', 'labbett23@unicef.org', '842-708-0610', 'Room 1869', '23681');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('rcaller39', 'Abelard Strong', '1971-12-07', 'adefreitas24@unesco.org', '170-285-2340', 'Apt 661', '47389');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('rcoverley59', 'Averell Sartin', '1978-10-29', 'anorres25@eventbrite.com', '226-608-8089', 'Suite 16', '49533');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('rirce7u', 'Francklyn Hehnke', '1993-12-02', 'cminker26@google.com.br', '327-445-2903', 'Apt 152', '15088');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('rjoliffe2i', 'Karisa Ainslie', '1977-04-29', 'dmalyon27@sohu.com', '241-597-4831', 'Room 585', '21187');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('ronians5o', 'Dorie Shaughnessy', '1983-09-12', 'rcoite28@xrea.com', '956-510-0425', 'Room 791', '21940');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('rpinare70', 'Kelli Eldrid', '1978-01-07', 'msprey29@ft.com', '185-247-0702', 'PO Box 61159', '44346');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('scarnalan36', 'Neill Vossing', '1980-07-07', 'rgiacobbo2a@stumbleupon.com', '815-667-4927', '17th Floor', '78914');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('scheeseman43', 'Erna Hardacre', '1972-01-10', 'ldack2b@wunderground.com', '387-701-0709', 'Apt 74', '25309');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('speasegood16', 'Reagen Bravey', '2003-11-29', 'pbonallick2c@icq.com', '901-613-5110', 'Room 1444', '24614');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('swhitticks1x', 'Vern Dakhov', '2001-03-25', 'apeaden2d@scribd.com', '161-217-1742', 'Room 1955', '88978');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tbeagen7o', 'Trescha Ibbotson', '1980-07-26', 'tconing2e@discovery.com', '904-917-7750', 'Room 1212', '33687');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tcluff9', 'Barbara-anne Almak', '2001-01-28', 'rscamadine2f@wikipedia.org', '543-360-4374', 'PO Box 25847', '34070');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tgoodspeed89', 'Hercules Sullivan', '1988-05-10', 'rvictory2g@elegantthemes.com', '453-865-9928', '5th Floor', '81380');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tpittendreigh63', 'Grant Roarty', '1973-08-07', 'pmasic2h@upenn.edu', '718-919-9648', '5th Floor', '71682');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tskirvin3', 'Rudd Terran', '2002-04-14', 'bseivertsen2i@blogtalkradio.com', '106-991-2307', '18th Floor', '87653');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tstarton2o', 'Ailina Macvey', '1995-07-09', 'pbyrde2j@addthis.com', '612-110-7048', 'Suite 65', '13032');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('tunion1l', 'Gilemette Klamp', '1974-10-03', 'skohtler2k@washingtonpost.com', '602-263-3799', 'Room 235', '48054');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('vege4c', 'Horacio Graber', '1977-06-20', 'rconnue2l@discuz.net', '137-135-5066', '6th Floor', '81866');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('vpelman3x', 'Brit Padly', '1982-02-10', 'cglasscoe2m@hubpages.com', '209-437-9564', 'Suite 31', '38589');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('vtortoise4r', 'Sheree MacCallester', '1989-05-19', 'etumielli2n@shop-pro.jp', '232-487-0995', 'Apt 294', '75619');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('wdrewry3r', 'Minnie Bavage', '1974-04-14', 'splackstone2o@typepad.com', '655-405-3748', '11th Floor', '11164');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('wmanzell69', 'Corrine Amthor', '1985-11-11', 'oleel2p@ehow.com', '944-740-6759', 'Suite 55', '56509');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('yhele50', 'Anthony Redwall', '1991-02-01', 'sdugget2q@canalblog.com', '961-487-5780', 'Suite 85', '32676');
insert into customer (customer_id, customer_name, DOB, customer_email, customer_contact_number, address, pincode) values ('zhalsonx', 'Skipp Runcie', '1987-09-09', 'rplaid2r@howstuffworks.com', '279-861-0968', 'Apt 289', '15435');


DROP TABLE if exists Supplier;


create table if not exists Supplier (
	supplier_id VARCHAR(50) not null,
	product_type VARCHAR(21) not null,
	supplier_name VARCHAR(50)not null,
	email_id VARCHAR(50) not null,
	contact_number VARCHAR(50)not null,
	payment_method VARCHAR(4)not null,
	address VARCHAR(50)not null,
	pincode VARCHAR(50) not null,
    PRIMARY KEY(supplier_id),
    UNIQUE(email_id),
    unique(contact_number)

);
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('aattarge47', 'Vegetables and Fruits', 'Doti Hardistry', 'dhardistry0@ebay.co.uk', '644-245-3653', 'COD', 'PO Box 71910', '41456');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('abroader7v', 'Atta and Rice', 'Reagen Radnage', 'rradnage1@alexa.com', '835-290-3027', 'Cash', 'PO Box 63211', '16707');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('achard5s', 'Dals', 'Pail Castiblanco', 'pcastiblanco2@ning.com', '892-234-2731', 'COD', 'Room 41', '83207');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('acouragev', 'Dry Fruits', 'Daniela Corroyer', 'dcorroyer3@theglobeandmail.com', '170-644-4766', 'Cash', 'Apt 446', '04629');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('adallas1j', 'Oils', 'Bailie Rawcliffe', 'brawcliffe4@booking.com', '744-453-8786', 'COD', 'Suite 79', '40529');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('aedsall31', 'Dairy', 'Ranee Southern', 'rsouthern5@istockphoto.com', '397-811-7026', 'Cash', 'Apt 1905', '29962');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('agiddy7g', 'Instant Food', 'Burl Carss', 'bcarss6@symantec.com', '997-466-9722', 'COD', 'PO Box 258', '37538');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('agillingwater67', 'Chocolates', 'Lazar Talmadge', 'ltalmadge7@admin.ch', '475-403-8250', 'Cash', 'Suite 21', '78791');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('agladeches', 'Deserts', 'Beauregard Anselm', 'banselm8@abc.net.au', '345-904-6081', 'COD', 'PO Box 95470', '56165');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ahammerberger2s', 'Snacks', 'Odille Tezure', 'otezure9@howstuffworks.com', '802-334-5079', 'Cash', 'Room 1025', '29775');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ahovie3p', 'Soft Drinks', 'Abe Cowderoy', 'acowderoya@aboutads.info', '412-313-2618', 'COD', 'PO Box 17655', '30588');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('amcmenemy51', 'Cereals', 'Alexandrina Barus', 'abarusb@tmall.com', '771-453-9729', 'Cash', 'Room 1136', '98337');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('amcteer1p', 'Sauces and Spreads', 'Tulley Samms', 'tsammsc@apache.org', '907-131-1357', 'COD', 'Room 1401', '40069');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('amcvittie3m', 'Bakery', 'Mathian Greason', 'mgreasond@parallels.com', '642-442-7168', 'Cash', '14th Floor', '72234');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('arushe11', 'Pharma and Wellness', 'Travus Pendock', 'tpendocke@cnn.com', '425-483-5403', 'COD', 'Apt 1969', '40419');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('asemkins2p', 'Stationery', 'Dominic Vossing', 'dvossingf@icq.com', '467-408-2741', 'Cash', 'Suite 34', '73193');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('athomke3g', 'Pet Care', 'Magdalen Werendell', 'mwerendellg@free.fr', '555-905-6161', 'COD', 'Room 882', '26788');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('bgallego1a', 'Cleaning Essentials', 'Clarette Sturman', 'csturmanh@angelfire.com', '901-170-8457', 'Cash', 'PO Box 17049', '87407');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('bkagan77', 'Alcohol', 'Juli Carrodus', 'jcarrodusi@sun.com', '764-548-7492', 'COD', 'Room 1304', '85555');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('bkiggel6a', 'Clothes', 'Magnum Arnli', 'marnlij@bbb.org', '595-330-3959', 'Cash', '5th Floor', '91799');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('bmaccawley7s', 'Sports.', 'Deni Matthiae', 'dmatthiaek@nydailynews.com', '682-526-4392', 'COD', 'Apt 187', '38855');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('bsavory5a', 'Vegetables and Fruits', 'Laureen MacNeil', 'lmacneill@sakura.ne.jp', '479-172-5895', 'Cash', 'Apt 1667', '61421');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('cmueller37', 'Atta and Rice', 'Anabelle Vertigan', 'avertiganm@cnet.com', '602-288-6947', 'COD', 'Suite 77', '50816');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('cspeachley84', 'Dals', 'Jannelle McDarmid', 'jmcdarmidn@posterous.com', '138-750-4953', 'Cash', 'Room 232', '84976');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('cthirst7a', 'Dry Fruits', 'Brynn Jelley', 'bjelleyo@accuweather.com', '253-723-4277', 'COD', 'Suite 74', '00519');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ctipper5v', 'Oils', 'Sandi Duckit', 'sduckitp@state.gov', '271-782-0037', 'Cash', 'Apt 1819', '48561');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dcaldayrou34', 'Dairy', 'Emlyn Nason', 'enasonq@unblog.fr', '739-809-9724', 'COD', 'Room 197', '89292');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dcoopeya', 'Instant Food', 'Orin Scruton', 'oscrutonr@ning.com', '886-516-1125', 'Cash', 'PO Box 26912', '72695');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dgingold6m', 'Chocolates', 'Shirley Greasley', 'sgreasleys@xing.com', '945-805-7385', 'COD', 'Apt 1888', '64131');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dgrigor5y', 'Deserts', 'Bram Marfield', 'bmarfieldt@feedburner.com', '749-750-0854', 'Cash', '15th Floor', '79382');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dhabgood5m', 'Snacks', 'Ernestus Kippie', 'ekippieu@alexa.com', '132-377-4988', 'COD', 'Room 944', '00997');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dparadyce6s', 'Soft Drinks', 'Conny Piggin', 'cpigginv@stanford.edu', '115-185-7906', 'Cash', 'Apt 1145', '94248');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('dstickinsm', 'Cereals', 'Dalston Tabbitt', 'dtabbittw@hexun.com', '209-613-2903', 'COD', 'Apt 355', '20078');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ecornock7', 'Sauces and Spreads', 'Sybilla Greggs', 'sgreggsx@gravatar.com', '504-578-7460', 'Cash', 'PO Box 21767', '23858');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('efoad7y', 'Bakery', 'Fayina Tilsley', 'ftilsleyy@infoseek.co.jp', '486-421-5707', 'COD', 'Suite 96', '11029');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('efrid61', 'Pharma and Wellness', 'Vivian Call', 'vcallz@constantcontact.com', '414-389-8862', 'Cash', 'PO Box 81926', '02784');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('fandino3y', 'Stationery', 'Hodge Lemanu', 'hlemanu10@amazon.co.jp', '803-746-9527', 'COD', 'Apt 1574', '76427');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('frevington3d', 'Pet Care', 'Ilise Boldt', 'iboldt11@mapy.cz', '972-428-8634', 'Cash', 'Apt 459', '32596');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ftrimnell4p', 'Cleaning Essentials', 'Waldon Kirimaa', 'wkirimaa12@stanford.edu', '330-935-3805', 'COD', 'Apt 582', '63275');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gcommucci3s', 'Alcohol', 'Dag Crow', 'dcrow13@jiathis.com', '625-298-1199', 'Cash', 'Room 806', '83421');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gcompson4m', 'Clothes', 'Viva Deniskevich', 'vdeniskevich14@si.edu', '961-603-1961', 'COD', 'Room 346', '08325');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gdelahunty1m', 'Sports.', 'Ashia Sinclar', 'asinclar15@gizmodo.com', '327-779-5251', 'Cash', 'PO Box 52610', '72989');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gglashby71', 'Vegetables and Fruits', 'Tallulah Rihosek', 'trihosek16@howstuffworks.com', '623-628-4961', 'COD', 'PO Box 42663', '21692');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ggravenell17', 'Atta and Rice', 'May Voase', 'mvoase17@blogtalkradio.com', '856-496-2598', 'Cash', '17th Floor', '11766');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gkem14', 'Dals', 'Jody Adicot', 'jadicot18@creativecommons.org', '824-864-0905', 'COD', 'PO Box 74130', '08545');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gkubanek5d', 'Dry Fruits', 'Baily Vears', 'bvears19@tuttocitta.it', '623-156-6159', 'Cash', 'Room 824', '47407');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('glilly1', 'Oils', 'Ardisj Chalk', 'achalk1a@163.com', '352-782-8706', 'COD', 'PO Box 1470', '48592');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gogan2d', 'Dairy', 'Elizabeth MacGaughy', 'emacgaughy1b@nhs.uk', '386-230-3143', 'Cash', 'PO Box 2930', '05735');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('gwaterstone7d', 'Instant Food', 'Mariel Chuck', 'mchuck1c@paypal.com', '617-165-9719', 'COD', '18th Floor', '08767');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('hforster7j', 'Chocolates', 'Haleigh Gillings', 'hgillings1d@surveymonkey.com', '116-705-4800', 'Cash', 'Room 75', '07050');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('hjantot4d', 'Deserts', 'Dom Beadel', 'dbeadel1e@state.tx.us', '316-854-7663', 'COD', 'Room 449', '33771');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('hkellogg27', 'Snacks', 'Stoddard Machon', 'smachon1f@last.fm', '412-604-3944', 'Cash', 'PO Box 86593', '45485');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('hpockey2g', 'Soft Drinks', 'Pier Creser', 'pcreser1g@posterous.com', '699-333-3481', 'COD', 'Suite 56', '94185');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('bb', 'Cereals', 'Dasi Jolliss', 'djolliss1h@fda.gov', '982-587-5579', 'Cash', 'Room 434', '38350');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('hscoggans4v', 'Sauces and Spreads', 'Marcelia Fassam', 'mfassam1i@liveinternet.ru', '452-929-7666', 'COD', 'PO Box 33295', '47067');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('htofpik4a', 'Bakery', 'Trent Mollnar', 'tmollnar1j@sbwire.com', '125-187-9630', 'Cash', '5th Floor', '21921');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('hwison5j', 'Pharma and Wellness', 'Gloria De Cruce', 'gde1k@dion.ne.jp', '541-863-8620', 'COD', 'PO Box 66286', '36928');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('jphillipp57', 'Stationery', 'Marena Filan', 'mfilan1l@netlog.com', '415-791-4655', 'Cash', '1st Floor', '93995');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('jsidebotton5g', 'Pet Care', 'Isaak Puzey', 'ipuzey1m@tripod.com', '625-960-9606', 'COD', '3rd Floor', '05391');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('kbrasherd', 'Cleaning Essentials', 'Wynne Ickowics', 'wickowics1n@hc360.com', '951-184-2396', 'Cash', 'Room 1604', '96738');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('kelloit44', 'Alcohol', 'Laurette Whittuck', 'lwhittuck1o@miitbeian.gov.cn', '895-727-8006', 'COD', 'PO Box 79785', '33074');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('kfishpoole7m', 'Clothes', 'Alfi Whittuck', 'awhittuck1p@facebook.com', '884-880-2356', 'Cash', 'Apt 1891', '94172');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('kkupisz6g', 'Sports.', 'Sena Aslin', 'saslin1q@nba.com', '637-448-3028', 'COD', 'Apt 1096', '66372');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('lhaliburton81', 'Vegetables and Fruits', 'Alice Sugarman', 'asugarman1r@google.co.jp', '549-915-7337', 'Cash', 'PO Box 7349', '63829');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('lharrisson64', 'Atta and Rice', 'Noll Barke', 'nbarke1s@homestead.com', '406-318-4168', 'COD', 'Room 339', '14972');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('lhourihan7p', 'Dals', 'Sherry Lentsch', 'slentsch1t@elegantthemes.com', '331-479-9434', 'Cash', 'Suite 11', '71519');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('lmaha2y', 'Dry Fruits', 'Robinet Wapples', 'rwapples1u@opensource.org', '936-278-4834', 'COD', '4th Floor', '07919');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('lverecker6v', 'Oils', 'Gina Sigg', 'gsigg1v@tuttocitta.it', '626-376-3498', 'Cash', 'PO Box 208', '66516');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('mlicence1d', 'Dairy', 'Zechariah Pyner', 'zpyner1w@census.gov', '436-975-9520', 'COD', '8th Floor', '78214');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('mmelbourne54', 'Instant Food', 'Barby Corris', 'bcorris1x@foxnews.com', '731-268-2759', 'Cash', 'Suite 46', '10876');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('mpetchery', 'Chocolates', 'Cosette McLay', 'cmclay1y@slate.com', '794-128-9508', 'COD', 'Suite 76', '14323');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('mpowlesland4', 'Deserts', 'Forster Doley', 'fdoley1z@exblog.jp', '936-841-0734', 'Cash', 'PO Box 22822', '28393');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('mstanislaw1s', 'Snacks', 'Patty Dudson', 'pdudson20@cdc.gov', '459-503-8947', 'COD', 'Room 822', '79647');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ncarme5p', 'Soft Drinks', 'Mikel MacLaren', 'mmaclaren21@joomla.org', '650-210-0651', 'Cash', 'Apt 664', '72398');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('oferretti3j', 'Cereals', 'Sybila Bernardotti', 'sbernardotti22@lulu.com', '208-461-4919', 'COD', 'PO Box 41259', '05455');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('pburchfield2j', 'Sauces and Spreads', 'Meggi Crowder', 'mcrowder23@yellowbook.com', '220-453-6976', 'Cash', 'Suite 79', '15630');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('pkamallj', 'Bakery', 'Ilene Kolinsky', 'ikolinsky24@photobucket.com', '753-806-0846', 'COD', 'Apt 966', '39623');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('qmoncrieffe2a', 'Pharma and Wellness', 'Lay McCluskey', 'lmccluskey25@ft.com', '761-179-5841', 'Cash', '1st Floor', '71437');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('rsuter1y', 'Stationery', 'Alard Hows', 'ahows26@indiegogo.com', '439-115-0918', 'COD', 'PO Box 49235', '74329');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('sbrideoke87', 'Pet Care', 'Axel Mullany', 'amullany27@techcrunch.com', '825-221-9036', 'Cash', 'PO Box 23135', '19176');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('sdmtrovic41', 'Cleaning Essentials', 'Steve Swanson', 'sswanson28@bloglines.com', '524-216-3456', 'COD', 'Apt 1796', '86703');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('seasterling8a', 'Alcohol', 'Matias Bromilow', 'mbromilow29@europa.eu', '740-590-5556', 'Cash', 'Suite 28', '10664');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('sgrzegorzewski1v', 'Clothes', 'Callean Bisley', 'cbisley2a@surveymonkey.com', '548-661-9085', 'COD', 'Apt 421', '26619');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ssteggles21', 'Sports.', 'Amargo Kitchin', 'akitchin2b@tripadvisor.com', '329-648-6440', 'Cash', 'Room 1018', '28845');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('swalsh74', 'Vegetables and Fruits', 'Tilly Proctor', 'tproctor2c@gnu.org', '732-444-8712', 'COD', 'Room 1300', '05116');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tchallender1g', 'Atta and Rice', 'Agata Brumen', 'abrumen2d@pinterest.com', '771-760-8763', 'Cash', 'Apt 1034', '18820');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tcorke6d', 'Dals', 'Veradis Haliburton', 'vhaliburton2e@networkadvertising.org', '186-647-7495', 'COD', 'Room 844', '57915');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tcraney6p', 'Dry Fruits', 'Ezequiel Durrance', 'edurrance2f@sakura.ne.jp', '459-916-2564', 'Cash', 'Suite 39', '68623');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tkightly4j', 'Oils', 'Gabby Bofield', 'gbofield2g@bravesites.com', '758-471-1087', 'COD', 'Suite 83', '87998');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tlegat4s', 'Dairy', 'Hagen Markl', 'hmarkl2h@themeforest.net', '177-283-8435', 'Cash', 'Apt 1181', '50449');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tleither6j', 'Instant Food', 'Ada Cosgry', 'acosgry2i@salon.com', '320-565-8510', 'COD', 'Apt 1489', '41080');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('tloader2m', 'Chocolates', 'Bethanne Roddan', 'broddan2j@e-recht24.de', '303-286-8142', 'Cash', 'Room 987', '40546');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('twhawell3v', 'Deserts', 'Dennie Twinterman', 'dtwinterman2k@blogs.com', '346-719-5513', 'COD', 'Apt 80', '15531');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('wdopson3a', 'Snacks', 'Brynne Macari', 'bmacari2l@cmu.edu', '798-155-4513', 'Cash', '5th Floor', '55460');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('xjoel4y', 'Soft Drinks', 'Linn Hamner', 'lhamner2m@yelp.com', '497-853-5457', 'COD', 'Apt 1015', '60999');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('yelecum6y', 'Cereals', 'Alvan McShirie', 'amcshirie2n@canalblog.com', '889-557-2437', 'Cash', 'Suite 79', '15124');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('ypendrey2v', 'Sauces and Spreads', 'Rachele Emslie', 'remslie2o@usa.gov', '967-715-1629', 'COD', '12th Floor', '32933');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('zmcgloinp', 'Bakery', 'Kordula Macak', 'kmacak2p@tinypic.com', '392-184-5467', 'Cash', 'Room 334', '16440');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('znordass24', 'Pharma and Wellness', 'Early Hanes', 'ehanes2q@reddit.com', '590-512-0882', 'COD', 'Room 690', '14316');
insert into Supplier (supplier_id, Product_type, supplier_name, email_id, contact_number, payment_method, address, pincode) values ('zswaine4g', 'Stationery', 'Andrey Weatherhill', 'aweatherhill2r@prnewswire.com', '596-300-2763', 'Cash', 'Apt 523', '83685');# Rows:

DROP table if exists USER; 
create table if not exists USER (
	user_id VARCHAR(50) not null,
	password VARCHAR(50)not null,
	type VARCHAR(8),
    PRIMARY KEY(user_id)
);
insert into USER (user_id, password, type) values ('aa', 'aa', 'Customer');
insert into USER (user_id, password, type) values ('glilly1', '6FNMKr', 'Supplier');
insert into USER (user_id, password, type) values ('ncheesley2', '3FphFF72g77', 'Delivery');
insert into USER (user_id, password, type) values ('tskirvin3', 'wpJ6dMSH', 'Customer');
insert into USER (user_id, password, type) values ('mpowlesland4', '8zMovEpVwGd', 'Supplier');
insert into USER (user_id, password, type) values ('slisciandri5', 'H7wzo8ETW', 'Delivery');
insert into USER (user_id, password, type) values ('htoe6', 'sQuO7V', 'Customer');
insert into USER (user_id, password, type) values ('ecornock7', 'Pykh4I', 'Supplier');
insert into USER (user_id, password, type) values ('tenglishby8', 'vxELDq', 'Delivery');
insert into USER (user_id, password, type) values ('tcluff9', 'f7F0MXxFXutv', 'Customer');
insert into USER (user_id, password, type) values ('dcoopeya', 'Tax1Q8', 'Supplier');
insert into USER (user_id, password, type) values ('siredellb', 'zVyXkZmM5HI', 'Delivery');
insert into USER (user_id, password, type) values ('jkingscottc', 'OY4MTx60l', 'Customer');
insert into USER (user_id, password, type) values ('kbrasherd', 'AWJscewvev5l', 'Supplier');
insert into USER (user_id, password, type) values ('edehooche', 'YWUxSocaMQ', 'Delivery');
insert into USER (user_id, password, type) values ('odawidowitzf', 'zkGJhkK', 'Customer');
insert into USER (user_id, password, type) values ('bb', 'bb', 'Supplier');
insert into USER (user_id, password, type) values ('nsheeringh', 'j5A71vTT', 'Delivery');
insert into USER (user_id, password, type) values ('mferfullei', 'F54xj9QdS', 'Customer');
insert into USER (user_id, password, type) values ('pkamallj', 'fVGbMPTv', 'Supplier');
insert into USER (user_id, password, type) values ('eardlingk', '4O1A11', 'Delivery');
insert into USER (user_id, password, type) values ('dfeatherbyl', 'cuakUNpXiNSF', 'Customer');
insert into USER (user_id, password, type) values ('dstickinsm', '1VWLXSnV9', 'Supplier');
insert into USER (user_id, password, type) values ('shackletonn', 'n5b6SeBWxY', 'Delivery');
insert into USER (user_id, password, type) values ('dpottageo', 'IR9S1l', 'Customer');
insert into USER (user_id, password, type) values ('zmcgloinp', 'ejBEd53a1D', 'Supplier');
insert into USER (user_id, password, type) values ('aroddanq', 'kRDIUFKsA', 'Delivery');
insert into USER (user_id, password, type) values ('awatheyr', '7VklCk1Rom', 'Customer');
insert into USER (user_id, password, type) values ('agladeches', 'n8oCYe5U', 'Supplier');
insert into USER (user_id, password, type) values ('pjezzardt', 'Og0aKP3r', 'Delivery');
insert into USER (user_id, password, type) values ('cfloresu', 'lFjOebo', 'Customer');
insert into USER (user_id, password, type) values ('acouragev', 'q66Ja7an', 'Supplier');
insert into USER (user_id, password, type) values ('rmiddletonw', 'GEDyu4n', 'Delivery');
insert into USER (user_id, password, type) values ('zhalsonx', 'mzkY8ab', 'Customer');
insert into USER (user_id, password, type) values ('mpetchery', 'xk4xdCsP7u', 'Supplier');
insert into USER (user_id, password, type) values ('tkidstounz', 'qaxKw7wQs', 'Delivery');
insert into USER (user_id, password, type) values ('nminghetti10', '1HRx0qgUa', 'Customer');
insert into USER (user_id, password, type) values ('arushe11', '1BgEEZd', 'Supplier');
insert into USER (user_id, password, type) values ('bdondon12', 'nkOv27MhGRnf', 'Delivery');
insert into USER (user_id, password, type) values ('cliell13', 'q8uDOKw', 'Customer');
insert into USER (user_id, password, type) values ('gkem14', 'ng1XiK', 'Supplier');
insert into USER (user_id, password, type) values ('wcaught15', 'C3rxP35N', 'Delivery');
insert into USER (user_id, password, type) values ('speasegood16', 'aqRVl5VgiB', 'Customer');
insert into USER (user_id, password, type) values ('ggravenell17', 'eDgGc2m9', 'Supplier');
insert into USER (user_id, password, type) values ('ccoucha18', 'tO7saJyWtaYI', 'Delivery');
insert into USER (user_id, password, type) values ('cmcmenemy19', 'kim02SmQp', 'Customer');
insert into USER (user_id, password, type) values ('bgallego1a', 'fl2q4cYUyei', 'Supplier');
insert into USER (user_id, password, type) values ('gyegorev1b', '5wtVfuZbJpZw', 'Delivery');
insert into USER (user_id, password, type) values ('ckinnaird1c', 'm3GZIOh', 'Customer');
insert into USER (user_id, password, type) values ('mlicence1d', 'uMZr8hX9NmfH', 'Supplier');
insert into USER (user_id, password, type) values ('nflipsen1e', '8xkdK5U', 'Delivery');
insert into USER (user_id, password, type) values ('koakey1f', 'sU5b0Mtsl', 'Customer');
insert into USER (user_id, password, type) values ('tchallender1g', '8nzrVJ0cuOuv', 'Supplier');
insert into USER (user_id, password, type) values ('lcarver1h', 'z2ZOLWZ4UOpS', 'Delivery');
insert into USER (user_id, password, type) values ('cmacilwrick1i', 'nKLvd96U8F', 'Customer');
insert into USER (user_id, password, type) values ('adallas1j', 'pxAca8ox7nO', 'Supplier');
insert into USER (user_id, password, type) values ('jkingsly1k', 'Aj7p4QptiK', 'Delivery');
insert into USER (user_id, password, type) values ('tunion1l', 'v4pH2d3XuGnK', 'Customer');
insert into USER (user_id, password, type) values ('gdelahunty1m', 'hFKQnjX', 'Supplier');
insert into USER (user_id, password, type) values ('jlaycock1n', '20ay4uCxp', 'Delivery');
insert into USER (user_id, password, type) values ('dsivill1o', 'HBJMq56Zs', 'Customer');
insert into USER (user_id, password, type) values ('amcteer1p', 'UP91hxIb', 'Supplier');
insert into USER (user_id, password, type) values ('ewinson1q', 'Q2g6v3HW', 'Delivery');
insert into USER (user_id, password, type) values ('nshawe1r', 'eXbTp9', 'Customer');
insert into USER (user_id, password, type) values ('mstanislaw1s', 'Dwn0VXAhG', 'Supplier');
insert into USER (user_id, password, type) values ('cspatig1t', 'eMzUaM6bKtb', 'Delivery');
insert into USER (user_id, password, type) values ('kfitchell1u', 'CvE1s8P1', 'Customer');
insert into USER (user_id, password, type) values ('sgrzegorzewski1v', '6rfrgpeXUqvQ', 'Supplier');
insert into USER (user_id, password, type) values ('ajarman1w', 'zFwsDoOTCV', 'Delivery');
insert into USER (user_id, password, type) values ('swhitticks1x', '3N0ACrVB', 'Customer');
insert into USER (user_id, password, type) values ('rsuter1y', 'S2WXqZq', 'Supplier');
insert into USER (user_id, password, type) values ('epiolli1z', 'KxW22IsCF', 'Delivery');
insert into USER (user_id, password, type) values ('balflatt20', 'EJTxAK', 'Customer');
insert into USER (user_id, password, type) values ('ssteggles21', '1gR7peB2', 'Supplier');
insert into USER (user_id, password, type) values ('sshetliff22', '5kiQUU5b', 'Delivery');
insert into USER (user_id, password, type) values ('dbains23', 'deVJl9', 'Customer');
insert into USER (user_id, password, type) values ('znordass24', 'BHXdzEt2tbRC', 'Supplier');
insert into USER (user_id, password, type) values ('arahlof25', 'dWxhQqvlfu1', 'Delivery');
insert into USER (user_id, password, type) values ('kmeegin26', 'v196vsa', 'Customer');
insert into USER (user_id, password, type) values ('hkellogg27', 'tFZ4TCXuv9', 'Supplier');
insert into USER (user_id, password, type) values ('sskuce28', 'uzHeOk4m', 'Delivery');
insert into USER (user_id, password, type) values ('apibsworth29', 'yxSMXl9he5W', 'Customer');
insert into USER (user_id, password, type) values ('qmoncrieffe2a', 'vuZvSC7B', 'Supplier');
insert into USER (user_id, password, type) values ('jhinken2b', 'MfDeSb8j', 'Delivery');
insert into USER (user_id, password, type) values ('astapley2c', '1edpqd', 'Customer');
insert into USER (user_id, password, type) values ('gogan2d', 'ottJ2eB', 'Supplier');
insert into USER (user_id, password, type) values ('mpurches2e', 'Ki5zUr7', 'Delivery');
insert into USER (user_id, password, type) values ('akollasch2f', 'xr6I5vCOJ', 'Customer');
insert into USER (user_id, password, type) values ('hpockey2g', 'IqOmLWZ', 'Supplier');
insert into USER (user_id, password, type) values ('dmee2h', 'B18NYTju', 'Delivery');
insert into USER (user_id, password, type) values ('rjoliffe2i', 'cnb6Pm9', 'Customer');
insert into USER (user_id, password, type) values ('pburchfield2j', 'ajzPkuaTikJ', 'Supplier');
insert into USER (user_id, password, type) values ('etungay2k', 'L5T1alperBL', 'Delivery');
insert into USER (user_id, password, type) values ('cfishpoole2l', 'tkJuBIgHKqkf', 'Customer');
insert into USER (user_id, password, type) values ('tloader2m', 'shxhdie', 'Supplier');
insert into USER (user_id, password, type) values ('apadefield2n', '3O1S88ct', 'Delivery');
insert into USER (user_id, password, type) values ('tstarton2o', '5MGeQ9i5I', 'Customer');
insert into USER (user_id, password, type) values ('asemkins2p', 'W1ratr', 'Supplier');
insert into USER (user_id, password, type) values ('srains2q', 'RVltEpavCL', 'Delivery');
insert into USER (user_id, password, type) values ('lseamans2r', 'WkwL6API', 'Customer');
insert into USER (user_id, password, type) values ('ahammerberger2s', '4aQNpTD31id', 'Supplier');
insert into USER (user_id, password, type) values ('lkellard2t', 'N59A0qjrKX', 'Delivery');
insert into USER (user_id, password, type) values ('hderechter2u', 'u6lQlBpp5', 'Customer');
insert into USER (user_id, password, type) values ('ypendrey2v', '7HsOC6WEw', 'Supplier');
insert into USER (user_id, password, type) values ('ndarthe2w', 'mHWG23zxyF', 'Delivery');
insert into USER (user_id, password, type) values ('lgonning2x', 'zTY5A0hW9G7', 'Customer');
insert into USER (user_id, password, type) values ('lmaha2y', '6uC84C5mOJFf', 'Supplier');
insert into USER (user_id, password, type) values ('rstleger2z', 'irsXZeKnYqtf', 'Delivery');
insert into USER (user_id, password, type) values ('leykel30', 'H9Ju5c9CJA', 'Customer');
insert into USER (user_id, password, type) values ('aedsall31', 'uR8w8FBJ', 'Supplier');
insert into USER (user_id, password, type) values ('dguilloux32', 'AE1zaCiKHN6', 'Delivery');
insert into USER (user_id, password, type) values ('mdeyes33', 'S868HyKn', 'Customer');
insert into USER (user_id, password, type) values ('dcaldayrou34', 'Gao8yjfA5fnU', 'Supplier');
insert into USER (user_id, password, type) values ('zblumire35', '9i12vjgGP1cx', 'Delivery');
insert into USER (user_id, password, type) values ('scarnalan36', 'VACslm', 'Customer');
insert into USER (user_id, password, type) values ('cmueller37', 'wiO03v', 'Supplier');
insert into USER (user_id, password, type) values ('tpriestman38', 'bZBogVbd0', 'Delivery');
insert into USER (user_id, password, type) values ('rcaller39', 'pCroHOxb', 'Customer');
insert into USER (user_id, password, type) values ('wdopson3a', 'NLfgxnM8', 'Supplier');
insert into USER (user_id, password, type) values ('dcuttler3b', 'kAQ1qovBW', 'Delivery');
insert into USER (user_id, password, type) values ('bbouchard3c', 'QVmzQSZG', 'Customer');
insert into USER (user_id, password, type) values ('frevington3d', 'c1OBFMBSOPb', 'Supplier');
insert into USER (user_id, password, type) values ('oshowte3e', 'ALEn3h', 'Delivery');
insert into USER (user_id, password, type) values ('nmixhel3f', 'ppgckUfJPH', 'Customer');
insert into USER (user_id, password, type) values ('athomke3g', 'fXW2Ca', 'Supplier');
insert into USER (user_id, password, type) values ('nackenson3h', '3VwNIHq', 'Delivery');
insert into USER (user_id, password, type) values ('cemilien3i', '1mwq6t4i', 'Customer');
insert into USER (user_id, password, type) values ('oferretti3j', 'PfhbIui8p', 'Supplier');
insert into USER (user_id, password, type) values ('cruberti3k', 'krVi0WQr', 'Delivery');
insert into USER (user_id, password, type) values ('hmackerley3l', 'HBoolJ', 'Customer');
insert into USER (user_id, password, type) values ('amcvittie3m', 'OZwAgr', 'Supplier');
insert into USER (user_id, password, type) values ('mcobbled3n', '94wWbFCrG', 'Delivery');
insert into USER (user_id, password, type) values ('gtrimby3o', 'C4dBVf', 'Customer');
insert into USER (user_id, password, type) values ('ahovie3p', 'X9ubM3', 'Supplier');
insert into USER (user_id, password, type) values ('abenneton3q', 'xIc8Yvp', 'Delivery');
insert into USER (user_id, password, type) values ('wdrewry3r', '1xZ0fy', 'Customer');
insert into USER (user_id, password, type) values ('gcommucci3s', 'dvjUiw', 'Supplier');
insert into USER (user_id, password, type) values ('olalor3t', '9tTX2oDyC', 'Delivery');
insert into USER (user_id, password, type) values ('jocorren3u', 'MzDwTAi', 'Customer');
insert into USER (user_id, password, type) values ('twhawell3v', 'BMDp6QUwP', 'Supplier');
insert into USER (user_id, password, type) values ('cwinterscale3w', 'uo9o5d', 'Delivery');
insert into USER (user_id, password, type) values ('vpelman3x', 'BnVu8xoP', 'Customer');
insert into USER (user_id, password, type) values ('fandino3y', 'slwGDoEXxBWl', 'Supplier');
insert into USER (user_id, password, type) values ('kropking3z', 'hwRmx0', 'Delivery');
insert into USER (user_id, password, type) values ('aknagges40', 'AuUKVfnBJ9o', 'Customer');
insert into USER (user_id, password, type) values ('sdmtrovic41', '1sdn7nG', 'Supplier');
insert into USER (user_id, password, type) values ('ncraydon42', 'IyHPk1Lsx', 'Delivery');
insert into USER (user_id, password, type) values ('scheeseman43', '65JXOdL', 'Customer');
insert into USER (user_id, password, type) values ('kelloit44', 'EMOiktuLa', 'Supplier');
insert into USER (user_id, password, type) values ('dburge45', '7X2HuNdqQF', 'Delivery');
insert into USER (user_id, password, type) values ('nzuker46', 'l6h5k4i9J', 'Customer');
insert into USER (user_id, password, type) values ('aattarge47', 'qeUu3jCH35', 'Supplier');
insert into USER (user_id, password, type) values ('danderer48', '54uygJ5S8VG', 'Delivery');
insert into USER (user_id, password, type) values ('jpumfrey49', '43YkLYnhZ', 'Customer');
insert into USER (user_id, password, type) values ('htofpik4a', 'ulMrVS1Jv', 'Supplier');
insert into USER (user_id, password, type) values ('wdebischof4b', 'E7tfJbulW1', 'Delivery');
insert into USER (user_id, password, type) values ('vege4c', 'XOC973uyoyK', 'Customer');
insert into USER (user_id, password, type) values ('hjantot4d', 'JT1IrmVy', 'Supplier');
insert into USER (user_id, password, type) values ('rbyfford4e', 'YxoCf6BVC', 'Delivery');
insert into USER (user_id, password, type) values ('csherbrooke4f', 'q48sKjsJwfG', 'Customer');
insert into USER (user_id, password, type) values ('zswaine4g', 'zkGMqUC7XVQY', 'Supplier');
insert into USER (user_id, password, type) values ('atripe4h', 'BSTcth4D7yY', 'Delivery');
insert into USER (user_id, password, type) values ('cgullis4i', 'Kqz96DyL4', 'Customer');
insert into USER (user_id, password, type) values ('tkightly4j', 'O56TgV8wa', 'Supplier');
insert into USER (user_id, password, type) values ('jhaps4k', 'MBy2mN', 'Delivery');
insert into USER (user_id, password, type) values ('jricards4l', 'OIFMmaopKf', 'Customer');
insert into USER (user_id, password, type) values ('gcompson4m', 'vrR5jJj', 'Supplier');
insert into USER (user_id, password, type) values ('adelamere4n', '3zFdG99us', 'Delivery');
insert into USER (user_id, password, type) values ('jknok4o', 'EWGNOXuU0kx4', 'Customer');
insert into USER (user_id, password, type) values ('ftrimnell4p', 'CtYCTSV01', 'Supplier');
insert into USER (user_id, password, type) values ('raspinal4q', 'alarzWXEvub', 'Delivery');
insert into USER (user_id, password, type) values ('vtortoise4r', 'nzLFSMEb', 'Customer');
insert into USER (user_id, password, type) values ('tlegat4s', 'QYKoURF27keQ', 'Supplier');
insert into USER (user_id, password, type) values ('cmacgilfoyle4t', 'nO3AeVH', 'Delivery');
insert into USER (user_id, password, type) values ('lmackonochie4u', 't10oIOW', 'Customer');
insert into USER (user_id, password, type) values ('hscoggans4v', 'mtFj4qlcl2Hu', 'Supplier');
insert into USER (user_id, password, type) values ('colech4w', 'MEU3M7yy5pO', 'Delivery');
insert into USER (user_id, password, type) values ('hjakoviljevic4x', '4U2AOtFOg', 'Customer');
insert into USER (user_id, password, type) values ('xjoel4y', 'ktw0axY8h', 'Supplier');
insert into USER (user_id, password, type) values ('mellam4z', 'BKEJO9F', 'Delivery');
insert into USER (user_id, password, type) values ('yhele50', 'vcWOGOZpDE', 'Customer');
insert into USER (user_id, password, type) values ('amcmenemy51', 'qyz37jq', 'Supplier');
insert into USER (user_id, password, type) values ('bcropton52', 'IcU9s95pb', 'Delivery');
insert into USER (user_id, password, type) values ('lskakunas53', 'lj8MLOk9ur', 'Customer');
insert into USER (user_id, password, type) values ('mmelbourne54', 'R7UEizP2s', 'Supplier');
insert into USER (user_id, password, type) values ('hchisolm55', 'fCPGfDI', 'Delivery');
insert into USER (user_id, password, type) values ('aseabrocke56', 'xfyVs3VvEC', 'Customer');
insert into USER (user_id, password, type) values ('jphillipp57', 'rqCukNhP1L', 'Supplier');
insert into USER (user_id, password, type) values ('rberic58', 'O9k4H2', 'Delivery');
insert into USER (user_id, password, type) values ('rcoverley59', 'XN17KG30bb', 'Customer');
insert into USER (user_id, password, type) values ('bsavory5a', '073bAfJOK3', 'Supplier');
insert into USER (user_id, password, type) values ('ogreedyer5b', 'ANj6z2Lc6snH', 'Delivery');
insert into USER (user_id, password, type) values ('bduce5c', '7oGazWN', 'Customer');
insert into USER (user_id, password, type) values ('gkubanek5d', 'qEYJv8', 'Supplier');
insert into USER (user_id, password, type) values ('eizak5e', 'pHYPR30s', 'Delivery');
insert into USER (user_id, password, type) values ('ostile5f', 'rA0g67dAXC7b', 'Customer');
insert into USER (user_id, password, type) values ('jsidebotton5g', 'bhugmuONA', 'Supplier');
insert into USER (user_id, password, type) values ('mtwining5h', 'fmfhBhCuag', 'Delivery');
insert into USER (user_id, password, type) values ('aholcroft5i', 'Sx7J8nZkZ', 'Customer');
insert into USER (user_id, password, type) values ('hwison5j', 'wBjx6keHcKU', 'Supplier');
insert into USER (user_id, password, type) values ('shuyhton5k', 'O7vNEkulSP', 'Delivery');
insert into USER (user_id, password, type) values ('agreguoli5l', 'HElggvD', 'Customer');
insert into USER (user_id, password, type) values ('dhabgood5m', '2thLB04LHAkj', 'Supplier');
insert into USER (user_id, password, type) values ('gpennington5n', '090h3OZbj', 'Delivery');
insert into USER (user_id, password, type) values ('ronians5o', 'GcZ0B1uqm', 'Customer');
insert into USER (user_id, password, type) values ('ncarme5p', 'Or8ygp', 'Supplier');
insert into USER (user_id, password, type) values ('fnaseby5q', 'DLj7DR0cd', 'Delivery');
insert into USER (user_id, password, type) values ('ncivitillo5r', 'cROLSj', 'Customer');
insert into USER (user_id, password, type) values ('achard5s', 'VMt4ifRpLk', 'Supplier');
insert into USER (user_id, password, type) values ('dramsdale5t', '05o7U91', 'Delivery');
insert into USER (user_id, password, type) values ('bnesterov5u', '6BUhQLuxR2am', 'Customer');
insert into USER (user_id, password, type) values ('ctipper5v', 'SliDz6r1Yy', 'Supplier');
insert into USER (user_id, password, type) values ('lskirving5w', 'uXNQKQ0', 'Delivery');
insert into USER (user_id, password, type) values ('mpover5x', 'RnhPIb1ce', 'Customer');
insert into USER (user_id, password, type) values ('dgrigor5y', 'fbcRupdc', 'Supplier');
insert into USER (user_id, password, type) values ('ahollyland5z', 'O14ROXYyTx', 'Delivery');
insert into USER (user_id, password, type) values ('olexa60', 'gBH60VCtX', 'Customer');
insert into USER (user_id, password, type) values ('efrid61', '7wANh1XQ', 'Supplier');
insert into USER (user_id, password, type) values ('hshellibeer62', '4B8Y6Qv6Ckoi', 'Delivery');
insert into USER (user_id, password, type) values ('tpittendreigh63', '1kQKltU9tXR5', 'Customer');
insert into USER (user_id, password, type) values ('lharrisson64', 'OB57KNIGCB', 'Supplier');
insert into USER (user_id, password, type) values ('vlangstaff65', 'psGIA9', 'Delivery');
insert into USER (user_id, password, type) values ('dbelcher66', 'Fzb8LbR9', 'Customer');
insert into USER (user_id, password, type) values ('agillingwater67', 'iEl8CXlsCOI9', 'Supplier');
insert into USER (user_id, password, type) values ('acoleborn68', 'bXxAMowE', 'Delivery');
insert into USER (user_id, password, type) values ('wmanzell69', 'jZZ0n3Na', 'Customer');
insert into USER (user_id, password, type) values ('bkiggel6a', 'Yvm46b', 'Supplier');
insert into USER (user_id, password, type) values ('kgooley6b', 'hzGJTob', 'Delivery');
insert into USER (user_id, password, type) values ('mcompfort6c', '4lcy98zROZJ', 'Customer');
insert into USER (user_id, password, type) values ('tcorke6d', 'zM7aez', 'Supplier');
insert into USER (user_id, password, type) values ('jvarcoe6e', 'XUe7rWQ6mkgx', 'Delivery');
insert into USER (user_id, password, type) values ('cmcnaught6f', 'uO7yyg', 'Customer');
insert into USER (user_id, password, type) values ('kkupisz6g', 'Lirw9g0XPm', 'Supplier');
insert into USER (user_id, password, type) values ('ameneer6h', 'qj9Q6h7', 'Delivery');
insert into USER (user_id, password, type) values ('bbowkley6i', 'Hyi27GoD7ivA', 'Customer');
insert into USER (user_id, password, type) values ('tleither6j', 'AszkUX', 'Supplier');
insert into USER (user_id, password, type) values ('msextie6k', 'OWQyyzMHBi5', 'Delivery');
insert into USER (user_id, password, type) values ('boneligan6l', '6Q82ooB', 'Customer');
insert into USER (user_id, password, type) values ('dgingold6m', 'a5rojhy', 'Supplier');
insert into USER (user_id, password, type) values ('krackstraw6n', 'cUWBUT', 'Delivery');
insert into USER (user_id, password, type) values ('cwanderschek6o', 'Fh4HAxN', 'Customer');
insert into USER (user_id, password, type) values ('tcraney6p', 'QTslrA', 'Supplier');
insert into USER (user_id, password, type) values ('jlyver6q', '8Du4MCM6E', 'Delivery');
insert into USER (user_id, password, type) values ('jsokale6r', 'IkaT1FDlvpI', 'Customer');
insert into USER (user_id, password, type) values ('dparadyce6s', 'aqMqurBhW7pr', 'Supplier');
insert into USER (user_id, password, type) values ('tcolin6t', 'XbczAiOWCE3R', 'Delivery');
insert into USER (user_id, password, type) values ('ncardello6u', '9pX0KXO', 'Customer');
insert into USER (user_id, password, type) values ('lverecker6v', 'd2yRXrUR5mt', 'Supplier');
insert into USER (user_id, password, type) values ('hfutcher6w', 'et2bnmKN6N', 'Delivery');
insert into USER (user_id, password, type) values ('knewart6x', '8Dvkfw', 'Customer');
insert into USER (user_id, password, type) values ('yelecum6y', 'ckqJwz92LTuM', 'Supplier');
insert into USER (user_id, password, type) values ('uwhayman6z', 'Cy9seZ', 'Delivery');
insert into USER (user_id, password, type) values ('rpinare70', 'obT2ge', 'Customer');
insert into USER (user_id, password, type) values ('gglashby71', 'RTN33CdvHF', 'Supplier');
insert into USER (user_id, password, type) values ('gtal72', 'NOv4BLXcJX', 'Delivery');
insert into USER (user_id, password, type) values ('cgudgen73', '8uSFoKKKUd9X', 'Customer');
insert into USER (user_id, password, type) values ('swalsh74', 'I0TILfc8NbZu', 'Supplier');
insert into USER (user_id, password, type) values ('lloughhead75', 'RoR5GM6', 'Delivery');
insert into USER (user_id, password, type) values ('jdoore76', 'IpCLKASBdIn', 'Customer');
insert into USER (user_id, password, type) values ('bkagan77', '6XbsMA', 'Supplier');
insert into USER (user_id, password, type) values ('semig78', 'a58jvY52u', 'Delivery');
insert into USER (user_id, password, type) values ('gphelips79', 'jT2rGh', 'Customer');
insert into USER (user_id, password, type) values ('cthirst7a', 'QIpc02Ic', 'Supplier');
insert into USER (user_id, password, type) values ('modunneen7b', 'cWMH1bEk', 'Delivery');
insert into USER (user_id, password, type) values ('apoe7c', 'Ro9iQqsJl', 'Customer');
insert into USER (user_id, password, type) values ('gwaterstone7d', '1XvUys3R30T', 'Supplier');
insert into USER (user_id, password, type) values ('oasbery7e', 'zgm4q5n', 'Delivery');
insert into USER (user_id, password, type) values ('nphizackarley7f', 'rYtNYCyMFmL', 'Customer');
insert into USER (user_id, password, type) values ('agiddy7g', 'E2om7i3', 'Supplier');
insert into USER (user_id, password, type) values ('jchesters7h', 'dWjtmpU', 'Delivery');
insert into USER (user_id, password, type) values ('cblaxton7i', 'lzk4zM', 'Customer');
insert into USER (user_id, password, type) values ('hforster7j', '5Lr59Sl7Doa', 'Supplier');
insert into USER (user_id, password, type) values ('chalcro7k', 'YFEcv7Gt', 'Delivery');
insert into USER (user_id, password, type) values ('hgonthard7l', 'YgWYb2OP', 'Customer');
insert into USER (user_id, password, type) values ('kfishpoole7m', 'q2CzCyOO', 'Supplier');
insert into USER (user_id, password, type) values ('aheigl7n', 'lm8vnEnYOBCc', 'Delivery');
insert into USER (user_id, password, type) values ('tbeagen7o', 'RGjCTW4Rv', 'Customer');
insert into USER (user_id, password, type) values ('lhourihan7p', 'hDeWUnx', 'Supplier');
insert into USER (user_id, password, type) values ('sdradey7q', 'cKXYi3aoFLO', 'Delivery');
insert into USER (user_id, password, type) values ('ctrowell7r', 'VQHRk4NHu', 'Customer');
insert into USER (user_id, password, type) values ('bmaccawley7s', 'BwVEpUVKe4b', 'Supplier');
insert into USER (user_id, password, type) values ('wcersey7t', 'YKNtuzmW', 'Delivery');
insert into USER (user_id, password, type) values ('rirce7u', 'w0hfu4LenPG', 'Customer');
insert into USER (user_id, password, type) values ('abroader7v', 'RWa7z0cW', 'Supplier');
insert into USER (user_id, password, type) values ('cleeson7w', 'IKuWamPnXz', 'Delivery');
insert into USER (user_id, password, type) values ('ecochet7x', 'bHbX42N3', 'Customer');
insert into USER (user_id, password, type) values ('efoad7y', 'gE7Xh4Xp', 'Supplier');
insert into USER (user_id, password, type) values ('pcamilleri7z', 'iPoFr6', 'Delivery');
insert into USER (user_id, password, type) values ('ideekes80', 'kyjFuBdoPc', 'Customer');
insert into USER (user_id, password, type) values ('lhaliburton81', 'Cr4ddeWsnpC', 'Supplier');
insert into USER (user_id, password, type) values ('pminget82', '0hEDxEpiN', 'Delivery');
insert into USER (user_id, password, type) values ('mchasemore83', '2F9RBtJwAy', 'Customer');
insert into USER (user_id, password, type) values ('cspeachley84', 'Nu4LAyc36M', 'Supplier');
insert into USER (user_id, password, type) values ('joheffernan85', 'qX3kMIoEX', 'Delivery');
insert into USER (user_id, password, type) values ('pstratten86', 'Kcg1rtK', 'Customer');
insert into USER (user_id, password, type) values ('sbrideoke87', 'bvT2IXJu1b', 'Supplier');
insert into USER (user_id, password, type) values ('bmahaddy88', 'VUc4IE1Aw', 'Delivery');
insert into USER (user_id, password, type) values ('tgoodspeed89', 'AFJUOw', 'Customer');
insert into USER (user_id, password, type) values ('seasterling8a', '04TUhs6wC', 'Supplier');
insert into USER (user_id, password, type) values ('opauly8b', 'lHkUaf0QGA', 'Delivery');


drop table  if exists manages;

create table if not exists manages(
	admin_user_id varchar(50) not null,
	user_id varchar(50) not null,
    primary key(user_id),
    FOREIGN KEY (user_id) REFERENCES USER(user_id)ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (admin_user_id) REFERENCES admin(user_id)ON UPDATE CASCADE
        ON DELETE CASCADE
    
    );
    
    



insert into manages (admin_user_id, user_id) values ('mehak', 'abenneton3q');
insert into manages (admin_user_id, user_id) values ('nalin', 'acoleborn68');
insert into manages (admin_user_id, user_id) values ('mehak', 'adelamere4n');
insert into manages (admin_user_id, user_id) values ('nalin', 'aheigl7n');
insert into manages (admin_user_id, user_id) values ('mehak', 'ahollyland5z');
insert into manages (admin_user_id, user_id) values ('nalin', 'ajarman1w');
insert into manages (admin_user_id, user_id) values ('mehak', 'ameneer6h');
insert into manages (admin_user_id, user_id) values ('nalin', 'apadefield2n');
insert into manages (admin_user_id, user_id) values ('mehak', 'arahlof25');
insert into manages (admin_user_id, user_id) values ('nalin', 'aroddanq');
insert into manages (admin_user_id, user_id) values ('mehak', 'atripe4h');
insert into manages (admin_user_id, user_id) values ('nalin', 'bcropton52');
insert into manages (admin_user_id, user_id) values ('mehak', 'bdondon12');
insert into manages (admin_user_id, user_id) values ('nalin', 'bmahaddy88');
insert into manages (admin_user_id, user_id) values ('mehak', 'ccoucha18');
insert into manages (admin_user_id, user_id) values ('nalin', 'chalcro7k');
insert into manages (admin_user_id, user_id) values ('mehak', 'cleeson7w');
insert into manages (admin_user_id, user_id) values ('nalin', 'cmacgilfoyle4t');
insert into manages (admin_user_id, user_id) values ('mehak', 'colech4w');
insert into manages (admin_user_id, user_id) values ('nalin', 'cruberti3k');
insert into manages (admin_user_id, user_id) values ('mehak', 'cspatig1t');
insert into manages (admin_user_id, user_id) values ('nalin', 'cwinterscale3w');
insert into manages (admin_user_id, user_id) values ('mehak', 'danderer48');
insert into manages (admin_user_id, user_id) values ('nalin', 'dburge45');
insert into manages (admin_user_id, user_id) values ('mehak', 'dcuttler3b');
insert into manages (admin_user_id, user_id) values ('nalin', 'dguilloux32');
insert into manages (admin_user_id, user_id) values ('mehak', 'dmee2h');
insert into manages (admin_user_id, user_id) values ('nalin', 'dramsdale5t');
insert into manages (admin_user_id, user_id) values ('mehak', 'eardlingk');
insert into manages (admin_user_id, user_id) values ('nalin', 'edehooche');
insert into manages (admin_user_id, user_id) values ('mehak', 'eizak5e');
insert into manages (admin_user_id, user_id) values ('nalin', 'epiolli1z');
insert into manages (admin_user_id, user_id) values ('mehak', 'etungay2k');
insert into manages (admin_user_id, user_id) values ('nalin', 'ewinson1q');
insert into manages (admin_user_id, user_id) values ('mehak', 'fnaseby5q');
insert into manages (admin_user_id, user_id) values ('nalin', 'gpennington5n');
insert into manages (admin_user_id, user_id) values ('mehak', 'gtal72');
insert into manages (admin_user_id, user_id) values ('nalin', 'gyegorev1b');
insert into manages (admin_user_id, user_id) values ('mehak', 'hchisolm55');
insert into manages (admin_user_id, user_id) values ('nalin', 'hfutcher6w');
insert into manages (admin_user_id, user_id) values ('mehak', 'hshellibeer62');
insert into manages (admin_user_id, user_id) values ('nalin', 'jchesters7h');
insert into manages (admin_user_id, user_id) values ('mehak', 'jhaps4k');
insert into manages (admin_user_id, user_id) values ('nalin', 'jhinken2b');
insert into manages (admin_user_id, user_id) values ('mehak', 'jkingsly1k');
insert into manages (admin_user_id, user_id) values ('nalin', 'jlaycock1n');
insert into manages (admin_user_id, user_id) values ('mehak', 'jlyver6q');
insert into manages (admin_user_id, user_id) values ('nalin', 'joheffernan85');
insert into manages (admin_user_id, user_id) values ('mehak', 'jvarcoe6e');
insert into manages (admin_user_id, user_id) values ('nalin', 'kgooley6b');
insert into manages (admin_user_id, user_id) values ('mehak', 'krackstraw6n');
insert into manages (admin_user_id, user_id) values ('nalin', 'kropking3z');
insert into manages (admin_user_id, user_id) values ('mehak', 'lcarver1h');
insert into manages (admin_user_id, user_id) values ('nalin', 'lkellard2t');
insert into manages (admin_user_id, user_id) values ('mehak', 'lloughhead75');
insert into manages (admin_user_id, user_id) values ('nalin', 'lskirving5w');
insert into manages (admin_user_id, user_id) values ('mehak', 'mcobbled3n');
insert into manages (admin_user_id, user_id) values ('nalin', 'mellam4z');
insert into manages (admin_user_id, user_id) values ('mehak', 'modunneen7b');
insert into manages (admin_user_id, user_id) values ('nalin', 'mpurches2e');
insert into manages (admin_user_id, user_id) values ('mehak', 'msextie6k');
insert into manages (admin_user_id, user_id) values ('nalin', 'mtwining5h');
insert into manages (admin_user_id, user_id) values ('mehak', 'nackenson3h');
insert into manages (admin_user_id, user_id) values ('nalin', 'ncheesley2');
insert into manages (admin_user_id, user_id) values ('mehak', 'ncraydon42');
insert into manages (admin_user_id, user_id) values ('nalin', 'ndarthe2w');
insert into manages (admin_user_id, user_id) values ('mehak', 'nflipsen1e');
insert into manages (admin_user_id, user_id) values ('nalin', 'nsheeringh');
insert into manages (admin_user_id, user_id) values ('mehak', 'oasbery7e');
insert into manages (admin_user_id, user_id) values ('nalin', 'ogreedyer5b');
insert into manages (admin_user_id, user_id) values ('mehak', 'olalor3t');
insert into manages (admin_user_id, user_id) values ('nalin', 'opauly8b');
insert into manages (admin_user_id, user_id) values ('mehak', 'oshowte3e');
insert into manages (admin_user_id, user_id) values ('nalin', 'pcamilleri7z');
insert into manages (admin_user_id, user_id) values ('mehak', 'pjezzardt');
insert into manages (admin_user_id, user_id) values ('nalin', 'pminget82');
insert into manages (admin_user_id, user_id) values ('mehak', 'raspinal4q');
insert into manages (admin_user_id, user_id) values ('nalin', 'rberic58');
insert into manages (admin_user_id, user_id) values ('mehak', 'rbyfford4e');
insert into manages (admin_user_id, user_id) values ('nalin', 'rmiddletonw');
insert into manages (admin_user_id, user_id) values ('mehak', 'rstleger2z');
insert into manages (admin_user_id, user_id) values ('nalin', 'sdradey7q');
insert into manages (admin_user_id, user_id) values ('mehak', 'semig78');
insert into manages (admin_user_id, user_id) values ('nalin', 'shackletonn');
insert into manages (admin_user_id, user_id) values ('mehak', 'shuyhton5k');
insert into manages (admin_user_id, user_id) values ('nalin', 'siredellb');
insert into manages (admin_user_id, user_id) values ('mehak', 'slisciandri5');
insert into manages (admin_user_id, user_id) values ('nalin', 'srains2q');
insert into manages (admin_user_id, user_id) values ('mehak', 'sshetliff22');
insert into manages (admin_user_id, user_id) values ('nalin', 'sskuce28');
insert into manages (admin_user_id, user_id) values ('mehak', 'tcolin6t');
insert into manages (admin_user_id, user_id) values ('nalin', 'tenglishby8');
insert into manages (admin_user_id, user_id) values ('mehak', 'tkidstounz');
insert into manages (admin_user_id, user_id) values ('nalin', 'tpriestman38');
insert into manages (admin_user_id, user_id) values ('mehak', 'uwhayman6z');
insert into manages (admin_user_id, user_id) values ('nalin', 'vlangstaff65');
insert into manages (admin_user_id, user_id) values ('mehak', 'wcaught15');
insert into manages (admin_user_id, user_id) values ('nalin', 'wcersey7t');
insert into manages (admin_user_id, user_id) values ('mehak', 'wdebischof4b');
insert into manages (admin_user_id, user_id) values ('nalin', 'zblumire35');





create table if not exists supplies(
		supplier_id varchar(50) not null,
        Product_ID int not null,
        FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)ON UPDATE CASCADE
        ON DELETE CASCADE,
        FOREIGN KEY (Product_ID) REFERENCES sql_Inventory.Product (Product_ID) ON UPDATE CASCADE
        ON DELETE CASCADE
        
);


insert into supplies (supplier_id, Product_id) values ('aattarge47', 61);
insert into supplies (supplier_id, Product_id) values ('abroader7v', 100);
insert into supplies (supplier_id, Product_id) values ('achard5s', 61);
insert into supplies (supplier_id, Product_id) values ('acouragev', 70);
insert into supplies (supplier_id, Product_id) values ('adallas1j', 22);
insert into supplies (supplier_id, Product_id) values ('aedsall31', 56);
insert into supplies (supplier_id, Product_id) values ('agiddy7g', 70);
insert into supplies (supplier_id, Product_id) values ('agillingwater67', 90);
insert into supplies (supplier_id, Product_id) values ('agladeches', 99);
insert into supplies (supplier_id, Product_id) values ('ahammerberger2s', 30);
insert into supplies (supplier_id, Product_id) values ('ahovie3p', 34);
insert into supplies (supplier_id, Product_id) values ('amcmenemy51', 3);
insert into supplies (supplier_id, Product_id) values ('amcteer1p', 5);
insert into supplies (supplier_id, Product_id) values ('amcvittie3m', 7);
insert into supplies (supplier_id, Product_id) values ('arushe11', 20);
insert into supplies (supplier_id, Product_id) values ('asemkins2p', 61);
insert into supplies (supplier_id, Product_id) values ('athomke3g', 38);
insert into supplies (supplier_id, Product_id) values ('bb', 96);
insert into supplies (supplier_id, Product_id) values ('bgallego1a', 15);
insert into supplies (supplier_id, Product_id) values ('bkagan77', 33);
insert into supplies (supplier_id, Product_id) values ('bkiggel6a', 29);
insert into supplies (supplier_id, Product_id) values ('bmaccawley7s', 70);
insert into supplies (supplier_id, Product_id) values ('bsavory5a', 52);
insert into supplies (supplier_id, Product_id) values ('cmueller37', 12);
insert into supplies (supplier_id, Product_id) values ('cspeachley84', 4);
insert into supplies (supplier_id, Product_id) values ('cthirst7a', 44);
insert into supplies (supplier_id, Product_id) values ('ctipper5v', 78);
insert into supplies (supplier_id, Product_id) values ('dcaldayrou34', 17);
insert into supplies (supplier_id, Product_id) values ('dcoopeya', 60);
insert into supplies (supplier_id, Product_id) values ('dgingold6m', 97);
insert into supplies (supplier_id, Product_id) values ('dgrigor5y', 4);
insert into supplies (supplier_id, Product_id) values ('dhabgood5m', 68);
insert into supplies (supplier_id, Product_id) values ('dparadyce6s', 20);
insert into supplies (supplier_id, Product_id) values ('dstickinsm', 94);
insert into supplies (supplier_id, Product_id) values ('ecornock7', 26);
insert into supplies (supplier_id, Product_id) values ('efoad7y', 44);
insert into supplies (supplier_id, Product_id) values ('efrid61', 61);
insert into supplies (supplier_id, Product_id) values ('fandino3y', 88);
insert into supplies (supplier_id, Product_id) values ('frevington3d', 3);
insert into supplies (supplier_id, Product_id) values ('ftrimnell4p', 83);
insert into supplies (supplier_id, Product_id) values ('gcommucci3s', 35);
insert into supplies (supplier_id, Product_id) values ('gcompson4m', 18);
insert into supplies (supplier_id, Product_id) values ('gdelahunty1m', 22);
insert into supplies (supplier_id, Product_id) values ('gglashby71', 95);
insert into supplies (supplier_id, Product_id) values ('ggravenell17', 63);
insert into supplies (supplier_id, Product_id) values ('gkem14', 35);
insert into supplies (supplier_id, Product_id) values ('gkubanek5d', 59);
insert into supplies (supplier_id, Product_id) values ('glilly1', 15);
insert into supplies (supplier_id, Product_id) values ('gogan2d', 64);
insert into supplies (supplier_id, Product_id) values ('gwaterstone7d', 74);
insert into supplies (supplier_id, Product_id) values ('hforster7j', 74);
insert into supplies (supplier_id, Product_id) values ('hjantot4d', 1);
insert into supplies (supplier_id, Product_id) values ('hkellogg27', 26);
insert into supplies (supplier_id, Product_id) values ('hpockey2g', 54);
insert into supplies (supplier_id, Product_id) values ('hscoggans4v', 42);
insert into supplies (supplier_id, Product_id) values ('htofpik4a', 42);
insert into supplies (supplier_id, Product_id) values ('hwison5j', 86);
insert into supplies (supplier_id, Product_id) values ('jphillipp57', 49);
insert into supplies (supplier_id, Product_id) values ('jsidebotton5g', 92);
insert into supplies (supplier_id, Product_id) values ('kbrasherd', 100);
insert into supplies (supplier_id, Product_id) values ('kelloit44', 37);
insert into supplies (supplier_id, Product_id) values ('kfishpoole7m', 68);
insert into supplies (supplier_id, Product_id) values ('kkupisz6g', 60);
insert into supplies (supplier_id, Product_id) values ('lhaliburton81', 49);
insert into supplies (supplier_id, Product_id) values ('lharrisson64', 6);
insert into supplies (supplier_id, Product_id) values ('lhourihan7p', 5);
insert into supplies (supplier_id, Product_id) values ('lmaha2y', 23);
insert into supplies (supplier_id, Product_id) values ('lverecker6v', 92);
insert into supplies (supplier_id, Product_id) values ('mlicence1d', 19);
insert into supplies (supplier_id, Product_id) values ('mmelbourne54', 79);
insert into supplies (supplier_id, Product_id) values ('mpetchery', 46);
insert into supplies (supplier_id, Product_id) values ('mpowlesland4', 68);
insert into supplies (supplier_id, Product_id) values ('mstanislaw1s', 100);
insert into supplies (supplier_id, Product_id) values ('ncarme5p', 58);
insert into supplies (supplier_id, Product_id) values ('oferretti3j', 82);
insert into supplies (supplier_id, Product_id) values ('pburchfield2j', 82);
insert into supplies (supplier_id, Product_id) values ('pkamallj', 41);
insert into supplies (supplier_id, Product_id) values ('qmoncrieffe2a', 77);
insert into supplies (supplier_id, Product_id) values ('rsuter1y', 69);
insert into supplies (supplier_id, Product_id) values ('sbrideoke87', 10);
insert into supplies (supplier_id, Product_id) values ('sdmtrovic41', 43);
insert into supplies (supplier_id, Product_id) values ('seasterling8a', 54);
insert into supplies (supplier_id, Product_id) values ('sgrzegorzewski1v', 73);
insert into supplies (supplier_id, Product_id) values ('ssteggles21', 3);
insert into supplies (supplier_id, Product_id) values ('swalsh74', 86);
insert into supplies (supplier_id, Product_id) values ('tchallender1g', 51);
insert into supplies (supplier_id, Product_id) values ('tcorke6d', 11);
insert into supplies (supplier_id, Product_id) values ('tcraney6p', 18);
insert into supplies (supplier_id, Product_id) values ('tkightly4j', 37);
insert into supplies (supplier_id, Product_id) values ('tlegat4s', 97);
insert into supplies (supplier_id, Product_id) values ('tleither6j', 17);
insert into supplies (supplier_id, Product_id) values ('tloader2m', 54);
insert into supplies (supplier_id, Product_id) values ('twhawell3v', 85);
insert into supplies (supplier_id, Product_id) values ('wdopson3a', 19);
insert into supplies (supplier_id, Product_id) values ('xjoel4y', 72);
insert into supplies (supplier_id, Product_id) values ('yelecum6y', 55);
insert into supplies (supplier_id, Product_id) values ('ypendrey2v', 71);
insert into supplies (supplier_id, Product_id) values ('zmcgloinp', 32);
insert into supplies (supplier_id, Product_id) values ('znordass24', 40);
insert into supplies (supplier_id, Product_id) values ('zswaine4g', 12);




	