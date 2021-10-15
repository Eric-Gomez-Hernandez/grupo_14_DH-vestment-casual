-- -----------------------------------
-- INSERT data for table `categories`
-- -----------------------------------
LOCK TABLES `categories` WRITE;
INSERT INTO `categories` VALUES ('F','Femenino'),('M','Masculino'),('U','Unisex');
UNLOCK TABLES;

-- -----------------------------------
-- INSERT data for table `colors`
-- -----------------------------------
LOCK TABLES `colors` WRITE;
INSERT INTO `colors` VALUES (1,'beige'),(2,'black'),(3,'brown'),(4,'crimson'),(5,'cyan'),
							(6,'denim'),(7,'gray'),(8,'green'),(9,'maroon'),(10,'mustard'),
                            (11,'purple'),(12,'red'),(13,'white');
UNLOCK TABLES;

-- -----------------------------------
-- INSERT data for table `sizes`
-- -----------------------------------
LOCK TABLES `sizes` WRITE;
INSERT INTO `sizes` VALUES ('L','Grande'),('M','Mediano'),('S','Chico'),('XL','Extra-Grande'),
							('XS','Extra-Chico'),('XXL','Super-Extra-Grande');
UNLOCK TABLES;

-- -----------------------------------
-- INSERT data for table `types`
-- -----------------------------------
LOCK TABLES `types` WRITE;
INSERT INTO `types` VALUES (1,'accessory'),(2,'blouse'),(3,'coat'),(4,'jacket'),
							(5,'pants'),(6,'shirt'),(7,'shoes'),(8,'sneakers'),(9,'socks'),
                            (10,'sweater'),(11,'sweatpants'),(12,'sweatshirt'),(13,'t-shirt'),
                            (14,'underwear');
UNLOCK TABLES;

-- -----------------------------------
-- INSERT data for table `products`
-- -----------------------------------
LOCK TABLES `products` WRITE;
INSERT INTO `products` VALUES (1,13,'M','XXL',9,800,'Casual_Mujer_Cafe.jpg',1087,'Fusce consequat. Nulla nisl. Nunc nisl.','justo morbi ut odio cras'),
(2,13,'U','M',9,922,'Casual_Mujer_Cafe.jpg',1087,'Fusce consequat. Nulla nisl. Nunc nisl.','justo morbi ut odio cras'),
(3,4,'M','S',8,502,'Casual_Mujer_Cafe.jpg',2353,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','tortor duis mattis egestas metus aenean'),
(4,8,'U','S',12,881,'Jeans_Hombre_Cafe.jpg',2284,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','quis lectus suspendisse potenti in eleifend quam'),
(5,7,'M','S',1,956,'Casual_Mujer_Blanco.jpg',3027,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','dolor morbi vel lectus in quam'),
(6,5,'M','L',6,609,'Jeans_Mujer_Azul.jpg',1436,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','eu felis fusce posuere felis sed lacus morbi sem mauris'),
(7,4,'M','M',2,772,'Jeans_Mujer_Cafe.jpg',2682,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','ligula pellentesque ultrices phasellus id sapien'),
(8,7,'F','XS',4,550,'Jeans_Hombre_Cafe.jpg',1946,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','pellentesque eget nunc donec quis orci'),
(9,2,'M','XS',14,415,'Casual_Mujer_Negro.jpg',897,'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','proin eu mi nulla ac enim in tempor turpis'),
(10,9,'M','XXL',12,790,'Casual_Hombre_Negro.jpg',1986,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','mi sit amet lobortis sapien sapien non mi'),
(11,13,'M','XL',6,277,'Casual_Mujer_Blanco.jpg',1926,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','mauris sit amet eros suspendisse accumsan tortor quis turpis sed'),
(12,6,'F','XL',1,175,'Casual_Hombre_Blanco.jpg',656,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','erat fermentum justo nec condimentum'),
(13,5,'M','L',5,795,'Jeans_Mujer_Azul.jpg',2382,'Maecenas ut massa quis augue luctus tincidunt. Nulla llis molestie lorem. Quisque ut erat.','rutrum nulla tellus in sagittis'),
(14,9,'U','M',9,405,'Jeans_Mujer_Cafe.jpg',1487,'Sed ante. Vivamus tortor. Duis mattis egestas metus.','id luctus nec molestie sed justo'),
(15,4,'U','M',1,601,'Casual_Hombre_Blanco.jpg',701,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','egestas metus aenean fermentum donec'),
(16,2,'U','XL',7,625,'Jeans_Mujer_Cafe.jpg',1558,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','vitae quam suspendisse potenti nullam porttitor lacus at'),
(17,8,'U','M',9,851,'Casual_Mujer_Blanco.jpg',2511,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur conval','rutrum ac lobortis vel dapibus at'),
(18,5,'U','S',5,913,'Jeans_Hombre_Azul.jpg',3444,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet u','non pretium quis lectus suspendisse potenti in eleifend quam'),
(19,13,'M','XXL',6,798,'Jeans_Hombre_Cafe.jpg',1597,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','in felis eu sapien cursus vestibulum proin eu mi nulla'),
(20,13,'M','M',2,271,'Casual_Mujer_Negro.jpg',2470,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','at feugiat non pretium quis'),
(21,6,'U','XS',6,194,'Jeans_Mujer_Cafe.jpg',1601,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet u','non ligula pellentesque ultrices phasellus id sapien in sapien'),
(22,7,'U','XS',4,945,'Jeans_Hombre_Cafe.jpg',1983,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','tristique in tempus sit amet sem fusce consequat nulla nisl'),
(23,7,'U','XXL',3,441,'Casual_Hombre_Negro.jpg',2040,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','luctus et ultrices posuere cubilia curae'),
(24,2,'U','M',8,974,'Jeans_Hombre_Cafe.jpg',2406,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','congue etiam justo etiam pretium iaculis justo in'),
(25,5,'U','S',12,917,'Jeans_Mujer_Azul.jpg',613,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','ultrices posuere cubilia curae donec pharetra magna'),
(26,3,'F','M',9,102,'Casual_Mujer_Cafe.jpg',763,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','rutrum rutrum neque aenean auctor gravida sem'),
(27,3,'F','M',14,871,'Jeans_Hombre_Cafe.jpg',988,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','auctor sed tristique in tempus sit amet'),
(28,4,'U','XS',11,90,'Casual_Mujer_Negro.jpg',2650,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','luctus et ultrices posuere cubilia curae'),
(29,10,'U','S',2,687,'Casual_Hombre_Negro.jpg',2809,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','duis aliquam convallis nunc proin'),
(30,8,'U','XS',7,409,'Casual_Hombre_Negro.jpg',1683,'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','non velit donec diam neque vestibulum eget vulputate ut ultrices'),
(31,5,'M','XXL',7,306,'Casual_Mujer_Negro.jpg',2745,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','ipsum praesent blandit lacinia erat vestibulum sed'),
(32,8,'U','XXL',14,465,'Jeans_Hombre_Cafe.jpg',1738,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','luctus et ultrices posuere cubilia curae donec'),
(33,4,'M','XS',14,108,'Jeans_Mujer_Azul.jpg',1137,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','diam cras pellentesque volutpat dui maecenas tristique'),
(34,12,'U','XL',5,998,'Casual_Mujer_Cafe.jpg',2485,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','aliquam non mauris morbi non lectus'),
(35,8,'U','XL',5,835,'Jeans_Mujer_Cafe.jpg',1077,'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','blandit lacinia erat vestibulum sed magna at nunc commodo'),
(36,9,'F','S',14,563,'Casual_Mujer_Negro.jpg',961,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','curabitur gravida nisi at nibh in hac habitasse platea'),
(37,10,'F','XL',2,557,'Casual_Mujer_Negro.jpg',3206,'In congue. Etiam justo. Etiam pretium iaculis justo.','pede justo lacinia eget tincidunt eget tempus'),
(38,2,'F','M',7,757,'Jeans_Hombre_Azul.jpg',2261,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','justo maecenas rhoncus aliquam lacus morbi quis tortor id'),
(39,6,'U','M',12,128,'Casual_Mujer_Cafe.jpg',841,'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','neque libero convallis eget eleifend'),
(40,12,'U','XL',13,155,'Casual_Mujer_Negro.jpg',1683,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','vel accumsan tellus nisi eu orci mauris lacinia sapien'),
(41,5,'F','XL',4,366,'Jeans_Mujer_Cafe.jpg',668,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','curae mauris viverra diam vitae'),
(42,13,'F','XL',5,586,'Casual_Mujer_Blanco.jpg',3429,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','in quis justo maecenas rhoncus'),
(43,5,'M','S',11,383,'Casual_Hombre_Negro.jpg',808,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridicul','tempor convallis nulla neque libero convallis'),
(44,2,'U','M',6,597,'Jeans_Hombre_Azul.jpg',3001,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','nibh in lectus pellentesque at nulla suspendisse potenti cras'),
(45,13,'U','XS',4,561,'Jeans_Hombre_Cafe.jpg',1506,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','pellentesque quisque porta volutpat erat quisque erat'),
(46,1,'F','XS',10,250,'Casual_Mujer_Blanco.jpg',3425,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','dis parturient montes nascetur ridiculus mus'),
(47,8,'F','L',14,560,'Jeans_Hombre_Cafe.jpg',1657,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','orci luctus et ultrices posuere cubilia curae duis faucibus accumsan'),
(48,9,'M','S',3,176,'Jeans_Hombre_Azul.jpg',1422,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','integer aliquet massa id lobortis convallis tortor risus dapibus'),
(49,11,'F','XS',4,368,'Casual_Hombre_Blanco.jpg',2094,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','fusce lacus purus aliquet at feugiat non'),
(50,11,'F','XS',4,367,'Casual_Mujer_Negro.jpg',2100,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','fusce lacus purus aliquet at feugiat non');
UNLOCK TABLES;

-- -----------------------------------
-- INSERT data for table `users`
-- -----------------------------------
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'Nollie','Merrin','nmerrin0@dell.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(2,'Vania','Royl','vroyl1@springer.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(3,'Katrine','Hulles','khulles2@usgs.gov','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(4,'Sue','Middlemiss','smiddlemiss3@diigo.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(5,'Teri','Gercke','tgercke4@elpais.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(6,'Gracie','Laven','glaven5@bravesites.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(7,'Amanda','Pinnion','apinnion6@weebly.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(8,'Geneva','Muirden','gmuirden7@wired.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(9,'Pieter','Vickar','pvickar8@wired.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(10,'Aviva','Wroughton','awroughton9@1688.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(11,'Travers','Kasman','tkasmana@dagondesign.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(12,'Nicky','Milius','nmiliusb@storify.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(13,'Melisandra','Villaron','mvillaronc@amazonaws.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(14,'Moreen','Kuhlmey','mkuhlmeyd@deviantart.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(15,'Jobina','Debney','jdebneye@ow.ly','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(16,'Luise','Assiter','lassiterf@toplist.cz','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(17,'Rayna','Campey','rcampeyg@ycombinator.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(18,'Vaughn','Ham','vhamh@elpais.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(19,'Sile','Geelan','sgeelani@howstuffworks.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(20,'Korella','Brosch','kbroschj@about.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(21,'Amble','Moxsom','amoxsomk@marketwatch.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(22,'Bowie','Daybell','bdaybelll@dell.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(23,'Fifine','Bummfrey','fbummfreym@google.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(24,'Gay','Brozsset','gbrozssetn@blogspot.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(25,'Kaitlin','Swynley','kswynleyo@webmd.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(26,'Vilhelmina','Warby','vwarbyp@jiathis.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(27,'Alaric','Shippard','ashippardq@symantec.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(28,'Winifield','Fidian','wfidianr@deviantart.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(29,'Shaine','Laraway','slaraways@wufoo.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(30,'Elicia','Boundey','eboundeyt@nbcnews.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(31,'Carie','Berntsson','cberntssonu@alexa.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(32,'Lavinia','Housego','lhousegov@bloglovin.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(33,'Meggi','Marchi','mmarchiw@pbs.org','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(34,'Neilla','Kobes','nkobesx@pinterest.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(35,'Olwen','Korn','okorny@sogou.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(36,'Fidelia','Peotz','fpeotzz@mediafire.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(37,'Prissie','Ohlsen','pohlsen10@ft.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','admin'),
(38,'Clerkclaude','Fawks','cfawks11@lycos.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(39,'Karina','Siggery','ksiggery12@icio.us','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(40,'Blythe','Gonnin','bgonnin13@sohu.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(41,'Cherice','Szimoni','cszimoni14@usgs.gov','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(42,'Brig','Piccop','bpiccop15@freewebs.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(43,'Gilemette','Northway','gnorthway16@goodreads.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(44,'Laurella','Gadsby','lgadsby17@twitter.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(45,'Gaynor','Tilsley','gtilsley18@berkeley.edu','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(46,'Irvin','Corwin','icorwin19@soup.io','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(47,'Natividad','Gavaran','ngavaran1a@va.gov','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(48,'Derk','Cisco','dcisco1b@opera.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(49,'Buddy','Vereker','bvereker1c@google.es','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(50,'Javier','Doohey','jdoohey1d@wikispaces.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(51,'Eric','GÃ³mez','egomez_99@yahoo.com','$2a$10$Gcc83trIc6bNmH57zU2U2.5NnOIn2DUxVGV8CQfUYzslMBTQhrzUK','default.jpg','user'),
(52,'AdriÃ¡n','Camacho','acr@henlo.com','$2a$10$mN3qoUOvt.p2bmlmTHL.huUmTko4zb5fhAlsZEDSpns2LNzskDUb.','default.jpg','user'),
(53,'AdriÃ¡n','Camacho RodrÃ­guez','admin@henlo.com','$2a$10$bcOk67ffjDzGIBOnLSGSo.onhoI5WP8oW5cGmiNxbxlvjrCdPtX6i','default.jpg','admin');
UNLOCK TABLES;
