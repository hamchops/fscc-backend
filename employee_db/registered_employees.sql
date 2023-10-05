CREATE DATABASE IF NOT EXISTS employee_data;

USE employee_data;

CREATE TABLE IF NOT EXISTS employees (
    id int not null AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    street varchar(100) NOT NULL,
    city varchar(100) NOT NULL,
    state varchar(50) NOT NULL,
    zip_code varchar(20) NOT NULL,
    phone_number varchar(15) NOT NULL,
    email varchar(60) NOT NULL,
    PRIMARY KEY (id)
);

insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (1, 'Erda', 'Sagerson', '901 Jenifer Hill', 'Jamaica', 'New York', '11470', '917-366-9397', 'esagerson0@epa.gov');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (2, 'Joycelin', 'Pelos', '63 Superior Terrace', 'Pensacola', 'Florida', '32505', '850-247-7006', 'jpelos1@cafepress.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (3, 'Thorsten', 'Castellino', '66877 Towne Park', 'Fort Lauderdale', 'Florida', '33336', '754-535-4744', 'tcastellino2@histats.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (4, 'Bobette', 'Menier', '2817 Susan Drive', 'Jacksonville', 'Florida', '32204', '904-806-3256', 'bmenier3@google.ru');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (5, 'Derril', 'Duiguid', '79076 Bluestem Court', 'Austin', 'Texas', '78778', '512-911-7291', 'dduiguid4@unesco.org');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (6, 'Cully', 'Schowenburg', '8784 Kinsman Street', 'Dallas', 'Texas', '75265', '214-630-9723', 'cschowenburg5@dot.gov');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (7, 'Pris', 'Lynde', '05379 Namekagon Hill', 'Chicago', 'Illinois', '60624', '312-569-9768', 'plynde6@wikispaces.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (8, 'Andrea', 'Hoult', '43668 Evergreen Drive', 'Lawrenceville', 'Georgia', '30045', '404-856-9959', 'ahoult7@slideshare.net');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (9, 'Ruy', 'Ciccottio', '39428 Center Parkway', 'Muskegon', 'Michigan', '49444', '231-525-5122', 'rciccottio8@theglobeandmail.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (10, 'Delbert', 'Cass', '9929 Gateway Pass', 'Shreveport', 'Louisiana', '71166', '318-796-0372', 'dcass9@google.cn');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (11, 'Suzanna', 'Brockie', '7 Cascade Crossing', 'Las Cruces', 'New Mexico', '88006', '505-945-1474', 'sbrockiea@skype.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (12, 'Gisela', 'Ranscomb', '3005 Rusk Avenue', 'Murfreesboro', 'Tennessee', '37131', '615-361-9408', 'granscombb@bbb.org');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (13, 'Devlen', 'Paradis', '10032 Merry Center', 'Des Moines', 'Iowa', '50981', '515-402-6306', 'dparadisc@usgs.gov');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (14, 'Martin', 'Daymont', '0 Stuart Pass', 'Birmingham', 'Alabama', '35205', '205-544-5293', 'mdaymontd@mtv.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (15, 'Hedvig', 'Jurzyk', '34945 Doe Crossing Terrace', 'Pompano Beach', 'Florida', '33069', '954-850-1695', 'hjurzyke@nyu.edu');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (16, 'Emanuel', 'Jagiello', '3132 Grasskamp Trail', 'Sarasota', 'Florida', '34238', '941-586-4444', 'ejagiellof@goo.ne.jp');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (17, 'Axel', 'Shewring', '4548 Miller Point', 'Sioux Falls', 'South Dakota', '57188', '605-383-1016', 'ashewringg@csmonitor.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (18, 'Imogene', 'Gonthard', '2270 7th Avenue', 'Milwaukee', 'Wisconsin', '53210', '414-169-8651', 'igonthardh@yale.edu');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (19, 'Myrtice', 'Thewys', '2 Fieldstone Hill', 'Miami', 'Florida', '33129', '305-409-0787', 'mthewysi@elpais.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (20, 'Kasper', 'Holdron', '138 Bunting Point', 'San Jose', 'California', '95118', '408-169-9230', 'kholdronj@omniture.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (21, 'Maurice', 'McGeachie', '20 Pawling Circle', 'Milwaukee', 'Wisconsin', '53234', '414-849-6854', 'mmcgeachiek@thetimes.co.uk');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (22, 'Velvet', 'Court', '3 Saint Paul Lane', 'Omaha', 'Nebraska', '68110', '402-885-2095', 'vcourtl@foxnews.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (23, 'Nissy', 'Yukhnevich', '33555 Browning Point', 'Kent', 'Washington', '98042', '360-852-4077', 'nyukhnevichm@google.com.br');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (24, 'Daloris', 'Dell Casa', '9 Golden Leaf Street', 'Huntington', 'West Virginia', '25716', '304-472-5217', 'ddellcasan@oracle.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (25, 'Gerty', 'Yearnsley', '1 Morrow Lane', 'Washington', 'District of Columbia', '20591', '202-681-0706', 'gyearnsleyo@nytimes.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (26, 'Frieda', 'Ortes', '52556 Gateway Hill', 'Fort Worth', 'Texas', '76105', '682-956-9789', 'fortesp@biblegateway.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (27, 'Carlynn', 'Thirst', '1 Quincy Alley', 'New Orleans', 'Louisiana', '70179', '504-246-1817', 'cthirstq@pen.io');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (28, 'Allison', 'Muskett', '96 1st Crossing', 'Chicago', 'Illinois', '60681', '312-999-6923', 'amuskettr@cnet.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (29, 'Janek', 'Metson', '07060 Oak Valley Road', 'Cedar Rapids', 'Iowa', '52410', '319-211-0188', 'jmetsons@flavors.me');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (30, 'Efrem', 'Frango', '33466 Declaration Circle', 'Brea', 'California', '92822', '818-444-8909', 'efrangot@buzzfeed.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (31, 'Josie', 'Grishin', '9316 Granby Drive', 'Monticello', 'Minnesota', '55585', '763-956-2979', 'jgrishinu@china.com.cn');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (32, 'Coretta', 'O''Cannon', '1665 Paget Parkway', 'Raleigh', 'North Carolina', '27626', '919-889-6214', 'cocannonv@vkontakte.ru');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (33, 'Galvin', 'Meriel', '126 Rieder Place', 'Vancouver', 'Washington', '98687', '360-704-5734', 'gmerielw@whitehouse.gov');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (34, 'Derwin', 'Picken', '0149 Sloan Plaza', 'Melbourne', 'Florida', '32919', '321-323-7747', 'dpickenx@seattletimes.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (35, 'Gabey', 'Bithany', '1 Continental Crossing', 'Fort Lauderdale', 'Florida', '33325', '954-437-2142', 'gbithanyy@pbs.org');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (36, 'Xenos', 'Barukh', '5019 Armistice Lane', 'Omaha', 'Nebraska', '68134', '402-823-6818', 'xbarukhz@cloudflare.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (37, 'Mead', 'Grigoryov', '2 Longview Pass', 'Springfield', 'Illinois', '62756', '217-792-9870', 'mgrigoryov10@tumblr.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (38, 'Kaleb', 'Kamen', '61 Bunker Hill Lane', 'Fairbanks', 'Alaska', '99709', '907-646-3028', 'kkamen11@oracle.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (39, 'Theodore', 'Kenrick', '46365 Lake View Junction', 'Montgomery', 'Alabama', '36125', '334-345-1457', 'tkenrick12@sakura.ne.jp');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (40, 'Elmer', 'MacDermot', '2 David Road', 'Orlando', 'Florida', '32885', '407-653-9283', 'emacdermot13@yandex.ru');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (41, 'Jordan', 'Cully', '0 Heffernan Avenue', 'Pensacola', 'Florida', '32526', '850-846-7998', 'jcully14@e-recht24.de');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (42, 'Hermine', 'Bowness', '24262 Schlimgen Crossing', 'Memphis', 'Tennessee', '38181', '901-833-6856', 'hbowness15@rediff.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (43, 'Maximilien', 'Diggens', '08572 Lien Plaza', 'Manchester', 'New Hampshire', '03105', '603-635-1879', 'mdiggens16@weibo.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (44, 'Jennifer', 'Broose', '619 Daystar Circle', 'Seattle', 'Washington', '98127', '206-355-8806', 'jbroose17@microsoft.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (45, 'Eliot', 'Thornton', '29 Clarendon Way', 'Wilkes Barre', 'Pennsylvania', '18768', '570-571-1398', 'ethornton18@ycombinator.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (46, 'Guillemette', 'Spyer', '8 Michigan Lane', 'Valdosta', 'Georgia', '31605', '229-249-2967', 'gspyer19@webeden.co.uk');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (47, 'Jackqueline', 'O''Connor', '87825 Dunning Road', 'Valley Forge', 'Pennsylvania', '19495', '484-920-4427', 'joconnor1a@github.io');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (48, 'Wallis', 'Portman', '6 Weeping Birch Plaza', 'Flint', 'Michigan', '48505', '810-823-7120', 'wportman1b@npr.org');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (49, 'Ilise', 'Pocke', '89 Forest Run Road', 'Chicago', 'Illinois', '60652', '773-320-8482', 'ipocke1c@usnews.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (50, 'Travers', 'Everwin', '77 Hooker Plaza', 'Salt Lake City', 'Utah', '84152', '801-562-5036', 'teverwin1d@umich.edu');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (51, 'Lida', 'Rizzetti', '9101 Melrose Point', 'Alexandria', 'Louisiana', '71307', '318-110-2480', 'lrizzetti1e@tumblr.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (52, 'Chiquia', 'MacVicar', '7 Katie Plaza', 'Hicksville', 'New York', '11854', '516-671-1764', 'cmacvicar1f@ted.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (53, 'Aloysia', 'Tebbet', '347 Golden Leaf Lane', 'Harrisburg', 'Pennsylvania', '17126', '717-480-1985', 'atebbet1g@xing.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (54, 'Krispin', 'McAuslan', '125 Graedel Street', 'Sacramento', 'California', '94207', '916-581-4534', 'kmcauslan1h@smugmug.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (55, 'Iain', 'Callow', '82 North Plaza', 'Murfreesboro', 'Tennessee', '37131', '615-618-9935', 'icallow1i@army.mil');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (56, 'Rita', 'Bricknell', '0 Nancy Way', 'Fresno', 'California', '93715', '209-117-4508', 'rbricknell1j@amazon.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (57, 'Elihu', 'Hulbert', '013 Talmadge Crossing', 'Saint Louis', 'Missouri', '63169', '314-420-1282', 'ehulbert1k@opensource.org');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (58, 'Bourke', 'Shearsby', '79 Briar Crest Pass', 'Kansas City', 'Missouri', '64125', '816-678-4714', 'bshearsby1l@youku.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (59, 'Andras', 'Rachuig', '492 Oakridge Pass', 'Fresno', 'California', '93721', '559-484-8288', 'arachuig1m@cam.ac.uk');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (60, 'Nettle', 'Colliber', '829 Center Crossing', 'Lynn', 'Massachusetts', '01905', '781-603-9527', 'ncolliber1n@japanpost.jp');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (61, 'Ogdan', 'Eastwood', '368 Mcbride Alley', 'Madison', 'Wisconsin', '53785', '608-475-9691', 'oeastwood1o@ft.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (62, 'Cheslie', 'Folley', '67713 Melrose Alley', 'Palmdale', 'California', '93591', '661-136-9845', 'cfolley1p@wp.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (63, 'Krishnah', 'Brydon', '52 Del Mar Crossing', 'Oxnard', 'California', '93034', '805-430-9206', 'kbrydon1q@e-recht24.de');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (64, 'Sukey', 'O''Donnelly', '1 Meadow Valley Avenue', 'Mount Vernon', 'New York', '10557', '914-896-5108', 'sodonnelly1r@businessinsider.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (65, 'Winnifred', 'Kilgour', '6 Ridgeview Avenue', 'Tucson', 'Arizona', '85737', '520-645-0255', 'wkilgour1s@tmall.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (66, 'Meghann', 'Isakovic', '6833 Redwing Lane', 'Richmond', 'Virginia', '23213', '804-184-2959', 'misakovic1t@dailymotion.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (67, 'Juliet', 'Glasscott', '79895 Thierer Junction', 'Young America', 'Minnesota', '55564', '952-171-0725', 'jglasscott1u@nymag.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (68, 'Chan', 'Bloxsome', '1617 Badeau Center', 'Denver', 'Colorado', '80270', '303-730-3907', 'cbloxsome1v@delicious.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (69, 'Iolande', 'Fryd', '54 Butterfield Alley', 'Marietta', 'Georgia', '30066', '770-510-9912', 'ifryd1w@macromedia.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (70, 'Bob', 'Sherar', '710 Grim Way', 'Tallahassee', 'Florida', '32314', '850-310-6357', 'bsherar1x@cyberchimps.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (71, 'Camila', 'Sachno', '4540 Melrose Avenue', 'Newark', 'New Jersey', '07195', '862-865-3865', 'csachno1y@stumbleupon.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (72, 'Sascha', 'Degoix', '32426 Gina Street', 'Washington', 'District of Columbia', '20575', '202-929-8472', 'sdegoix1z@facebook.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (73, 'Chelsea', 'Seymer', '52 Summit Place', 'Denver', 'Colorado', '80279', '303-929-4032', 'cseymer20@example.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (74, 'Thomasine', 'Kamen', '06 Muir Center', 'Atlanta', 'Georgia', '30358', '404-484-4808', 'tkamen21@skype.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (75, 'Vincenty', 'Thomton', '64212 Carpenter Junction', 'Naples', 'Florida', '34108', '941-715-7600', 'vthomton22@taobao.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (76, 'Devy', 'Ruddock', '317 Commercial Circle', 'San Diego', 'California', '92145', '619-536-0366', 'druddock23@abc.net.au');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (77, 'Karalee', 'Went', '167 Atwood Court', 'Boise', 'Idaho', '83757', '208-207-1553', 'kwent24@mashable.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (78, 'Hephzibah', 'Adnam', '3 Burning Wood Lane', 'Lakewood', 'Washington', '98498', '253-146-3734', 'hadnam25@histats.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (79, 'Coop', 'Jaquin', '7834 Hagan Place', 'Akron', 'Ohio', '44393', '234-516-7267', 'cjaquin26@mapy.cz');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (80, 'Hedy', 'Dwire', '50 Schurz Hill', 'Escondido', 'California', '92030', '760-920-5685', 'hdwire27@jalbum.net');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (81, 'Biron', 'Mulvany', '11 Westerfield Street', 'Evansville', 'Indiana', '47737', '812-426-1350', 'bmulvany28@google.fr');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (82, 'Chip', 'Hurch', '55515 Buena Vista Avenue', 'Charleston', 'South Carolina', '29403', '843-774-2987', 'church29@ask.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (83, 'Darrin', 'Messum', '2757 Becker Crossing', 'Columbus', 'Ohio', '43284', '614-812-3958', 'dmessum2a@squidoo.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (84, 'Farly', 'Krzyzanowski', '264 Bunting Drive', 'Long Beach', 'California', '90805', '310-952-0535', 'fkrzyzanowski2b@soundcloud.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (85, 'Vin', 'Osler', '18 Fremont Drive', 'Saint Petersburg', 'Florida', '33710', '727-730-2073', 'vosler2c@gravatar.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (86, 'Marya', 'Jephson', '87341 Cherokee Trail', 'Tampa', 'Florida', '33686', '813-553-0402', 'mjephson2d@bloglovin.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (87, 'Barnie', 'Gilchrest', '0141 Alpine Pass', 'Frankfort', 'Kentucky', '40618', '502-193-7754', 'bgilchrest2e@google.ru');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (88, 'Babette', 'Docket', '50493 Farmco Way', 'Louisville', 'Kentucky', '40205', '502-452-9194', 'bdocket2f@github.io');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (89, 'Neila', 'Souten', '35 West Street', 'New Orleans', 'Louisiana', '70179', '504-442-5308', 'nsouten2g@diigo.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (90, 'Alvin', 'Gascoyen', '627 Caliangt Street', 'Fayetteville', 'North Carolina', '28305', '910-672-8040', 'agascoyen2h@arstechnica.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (91, 'Reinaldos', 'McCourtie', '45 Burning Wood Avenue', 'Huntington Beach', 'California', '92648', '562-734-1010', 'rmccourtie2i@apple.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (92, 'Debera', 'Avieson', '3484 Dovetail Lane', 'New York City', 'New York', '10014', '718-473-6591', 'davieson2j@bizjournals.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (93, 'Benedict', 'Elphinstone', '699 Pepper Wood Street', 'Shawnee Mission', 'Kansas', '66205', '913-740-0774', 'belphinstone2k@discovery.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (94, 'Cora', 'Gauthorpp', '36599 Starling Junction', 'Springfield', 'Illinois', '62723', '217-794-2883', 'cgauthorpp2l@utexas.edu');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (95, 'Maryrose', 'Edwards', '105 Golf Crossing', 'Plano', 'Texas', '75074', '469-315-8571', 'medwards2m@soundcloud.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (96, 'Roshelle', 'Mallatratt', '765 Hoffman Pass', 'Montgomery', 'Alabama', '36104', '334-208-1983', 'rmallatratt2n@illinois.edu');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (97, 'Ruggiero', 'Riddle', '35375 Old Gate Alley', 'San Antonio', 'Texas', '78260', '210-500-0222', 'rriddle2o@cbc.ca');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (98, 'Amandi', 'Sleeman', '0152 Loomis Plaza', 'Charleston', 'West Virginia', '25321', '304-262-6306', 'asleeman2p@mail.ru');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (99, 'Paxon', 'Speakman', '6792 Anhalt Center', 'New York City', 'New York', '10175', '212-134-9837', 'pspeakman2q@elpais.com');
insert into employees (id, first_name, last_name, street, city, state, zip_code, phone_number, email) values (100, 'Parsifal', 'Ambrosi', '25 Dahle Junction', 'San Antonio', 'Texas', '78255', '210-391-7102', 'pambrosi2r@indiatimes.com');
showing first 100 rows
# Rows:
500

