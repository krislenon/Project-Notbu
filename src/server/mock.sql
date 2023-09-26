USE notbu;

insert into fullAddress (house_num, street, subdivision, barangay, city, province, zip, landmark) values (null, null, null, 'Gulod', 'Novaliches Q.C.', 'Metro Manila', '1117','Angelique Devine Grace School');
insert into user (first_name, last_name, username, password, contact_number, address, mop) values ('Abegail', 'Navarro', 'kavehime', 'non-chanMylabs', '09471524613', LAST_INSERT_ID(), 'BPI');
insert into fullAddress (house_num, street, subdivision, barangay, city, province, zip, landmark) values ('L3 Blk5', 'A. Ramirez', 'IA-JAN Townhomes', 'San Bartolome', 'Novaliches Q.C.', 'Metro Manila', '1116', null);
insert into user (first_name, last_name, username, password, contact_number, address, mop) values ('Vivian Joy', 'Tatad', 'pokemonMaster', 'gustoKoNangMagResign100+', '09167065029', LAST_INSERT_ID(), 'GCash');
insert into fullAddress (house_num, street, subdivision, barangay, city, province, zip, landmark) values ('Blk 53 Lot 7', null, 'Villa Luisa', 'Barangay 171', 'North Bagumbong Caloocan City', 'Metro Manila', '1421',null);
insert into user (first_name, last_name, username, password, contact_number, address, mop) values ('Hannah Hazel', 'Cabardo', null, null, '09394313244', LAST_INSERT_ID(), 'COD');
insert into fullAddress (house_num, street, subdivision, barangay, city, province, zip, landmark) values ('#70 Blk4 L11', 'Phase II', 'Dormitory', 'Nagkaisang Nayon', 'Novaliches Q.C.', 'Metro Manila', '1125','Dormitory Court');
insert into user (first_name, last_name, username, password, contact_number, address, mop, isOverallAdmin) values ('Kris', 'Lenon', null, null, '09480713616', LAST_INSERT_ID(), 'COD', 1);

insert into fullAddress (house_num, street, subdivision, barangay, city, province, zip, landmark) values ('E Lot #2', 'Marcos', 'Dona Faustina', 'San Bartolome', 'Novaliches Q.C.', 'Metro Manila', '1116','AC-DC Band Studio');
insert into supplier (supplier_name, first_name, last_name, contact_number, address) values ('Pampam Furnitures', 'Pamela Ann', 'Febrio', '09166561552', LAST_INSERT_ID());

insert into product (product_name, category, status, brand, body, img_filename) values ('Hampas Chair', 'chairs', 'NORMAL', 'no brand', 'Matibay, pwede ipang-hampas sa kaaway', 'hampas_chair.png');
insert into specs (price, type1, type2, product_id, img_filename) values (300, 'black', null, (SELECT product_id from product WHERE product_name='Hampas Chair' and brand='no brand'), 'hampas_chair/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (350, 'white', null, (SELECT product_id from product WHERE product_name='Hampas Chair' and brand='no brand'), 'hampas_chair/2.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Ice Box', 'others', 'NORMAL', 'Orocan', 'Insulated; Free ice scoop', 'ice_box_orocan.png');
insert into specs (price, type1, type2, product_id, img_filename) values (600, '8L', null, (SELECT product_id from product WHERE product_name='Ice Box' and brand='Orocan'), 'ice_box_orocan/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (700, '15L', null, (SELECT product_id from product WHERE product_name='Ice Box' and brand='Orocan'), 'ice_box_orocan/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (900, '30L', null, (SELECT product_id from product WHERE product_name='Ice Box' and brand='Orocan'), 'ice_box_orocan/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1250, '45L', null, (SELECT product_id from product WHERE product_name='Ice Box' and brand='Orocan'), 'ice_box_orocan/4.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Ice Box', 'others', 'NORMAL', 'Zooey', null, 'ice_box_zooey.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1400, '52L', null, (SELECT product_id from product WHERE product_name='Ice Box' and brand='Zooey'), 'ice_box_zooey/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Sala Set', 'sets', 'NORMAL', 'Jolly', 'Rattan chairs inclusive of foam and foam cover', 'sala_set_jolly.png');
insert into specs (price, type1, type2, product_id, img_filename) values (10400, '2-seater set', null, (SELECT product_id from product WHERE product_name='Sala Set' and brand='Jolly'), 'sala_set_jolly/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (12700, '3-seater set', null, (SELECT product_id from product WHERE product_name='Sala Set' and brand='Jolly'), 'sala_set_jolly/2.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Arm Chair', 'chairs', 'NORMAL', 'Jolly', 'Rattan chairs', 'arm_chair_jolly.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1100, '1-seater', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Jolly'), 'arm_chair_jolly/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (3200, '2-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Jolly'), 'arm_chair_jolly/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (5500, '4-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Jolly'), 'arm_chair_jolly/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (8400, '6-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Jolly'), 'arm_chair_jolly/4.png');
insert into specs (price, type1, type2, product_id, img_filename) values (10800, '8-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Jolly'), 'arm_chair_jolly/5.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Pressure Cooker', 'others', 'NORMAL', 'Standard', null, 'pressure_cooker.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1200, '4 quartz', null, (SELECT product_id from product WHERE product_name='Pressure Cooker' and brand='Standard'), 'pressure_cooker/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1350, '6 quartz', null, (SELECT product_id from product WHERE product_name='Pressure Cooker' and brand='Standard'), 'pressure_cooker/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1500, '8 quartz', null, (SELECT product_id from product WHERE product_name='Pressure Cooker' and brand='Standard'), 'pressure_cooker/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1700, '10 quartz', null, (SELECT product_id from product WHERE product_name='Pressure Cooker' and brand='Standard'), 'pressure_cooker/4.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Arm Chair', 'chairs', 'NORMAL', 'Everest', null, 'arm_chair_everest.png');
insert into specs (price, type1, type2, product_id, img_filename) values (900, '1-seater', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Everest'), 'arm_chair_everest/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2400, '2-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Everest'), 'arm_chair_everest/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (4000, '4-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Everest'), 'arm_chair_everest/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (5000, '6-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Everest'), 'arm_chair_everest/4.png');
insert into specs (price, type1, type2, product_id, img_filename) values (7300, '8-seater set', null, (SELECT product_id from product WHERE product_name='Arm Chair' and brand='Everest'), 'arm_chair_everest/5.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Relaxing Chair', 'chairs', 'NORMAL', 'no brand', null, 'relaxing_chair.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1100, null, null, (SELECT product_id from product WHERE product_name='Relaxing Chair' and brand='no brand'), 'relaxing_chair/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Trash Bin', 'others', 'NORMAL', 'no brand', null, 'trash_bin.png');
insert into specs (price, type1, type2, product_id, img_filename) values (320, '28L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (350, '45L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (380, '50L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (650, '80L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/4.png');
insert into specs (price, type1, type2, product_id, img_filename) values (700, '100L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/5.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2400, '150L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/6.png');
insert into specs (price, type1, type2, product_id, img_filename) values (3300, '250L', null, (SELECT product_id from product WHERE product_name='Trash Bin' and brand='no brand'), 'trash_bin/7.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Plastic Rattan Table', 'tables', 'NORMAL', 'no brand', null, 'plastic_rattan_table.png');
insert into specs (price, type1, type2, product_id, img_filename) values (800, 'without glass', null, (SELECT product_id from product WHERE product_name='Plastic Rattan Table' and brand='no brand'), 'plastic_rattan_table/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1550, 'with glass', null, (SELECT product_id from product WHERE product_name='Plastic Rattan Table' and brand='no brand'), 'plastic_rattan_table/2.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Rattan Set', 'sets', 'NORMAL', 'no brand', null, 'rattan_set.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1500, 'without glass', '2-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2250, 'without glass', '4-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (3150, 'without glass', '6-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (4800, 'without glass', '8-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/4.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2300, 'with glass', '2-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/5.png');
insert into specs (price, type1, type2, product_id, img_filename) values (3000, 'with glass', '4-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/6.png');
insert into specs (price, type1, type2, product_id, img_filename) values (4000, 'with glass', '6-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/7.png');
insert into specs (price, type1, type2, product_id, img_filename) values (6100, 'with glass', '8-seater', (SELECT product_id from product WHERE product_name='Rattan Set' and brand='no brand'), 'rattan_set/8.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Office Chair', 'chairs', 'NORMAL', 'no brand', null, 'office_chair.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1100, null, null, (SELECT product_id from product WHERE product_name='Office Chair' and brand='no brand'), 'office_chair/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Computer Table', 'tables', 'NORMAL', 'no brand', null, 'computer_table.png');
insert into specs (price, type1, type2, product_id, img_filename) values (750, '85x40', null, (SELECT product_id from product WHERE product_name='Computer Table' and brand='no brand'), 'computer_table/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (900, '100x50', null, (SELECT product_id from product WHERE product_name='Computer Table' and brand='no brand'), 'computer_table/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (950, '100x60', null, (SELECT product_id from product WHERE product_name='Computer Table' and brand='no brand'), 'computer_table/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1000, '120x40', null, (SELECT product_id from product WHERE product_name='Computer Table' and brand='no brand'), 'computer_table/4.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1100, '120x60', null, (SELECT product_id from product WHERE product_name='Computer Table' and brand='no brand'), 'computer_table/5.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Plastic Cleopatra Sofabed', 'chairs', 'NORMAL', 'Jolly', null, 'plastic_cleo_sofabed.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1800, null, null, (SELECT product_id from product WHERE product_name='Plastic Cleopatra Sofabed' and brand='Jolly'), 'plastic_cleo_sofabed/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Storage Cabinet', 'others', 'NORMAL', 'J&T', null, 'storage_cabinet.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1400, null, null, (SELECT product_id from product WHERE product_name='Storage Cabinet' and brand='J&T'), 'storage_cabinet/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Gentle Bounce Pillow', 'others', 'NORMAL', 'no brand', null, 'gentle_bounce_pillow.png');
insert into specs (price, type1, type2, product_id, img_filename) values (500, null, null, (SELECT product_id from product WHERE product_name='Gentle Bounce Pillow' and brand='no brand'), 'gentle_bounce_pillow/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Rattan Round Table', 'tables', 'NORMAL', 'no brand', 'Table only', 'rattan_round_table.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1200, '2-seater', null, (SELECT product_id from product WHERE product_name='Rattan Round Table' and brand='no brand'), 'rattan_round_table/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1500, '4-seater', null, (SELECT product_id from product WHERE product_name='Rattan Round Table' and brand='no brand'), 'rattan_round_table/2.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Plastic Rattan Stool', 'chairs', 'NORMAL', 'no brand', null, 'plastic_rattan_stool.png');
insert into specs (price, type1, type2, product_id, img_filename) values (180, null, null, (SELECT product_id from product WHERE product_name='Plastic Rattan Stool' and brand='no brand'), 'plastic_rattan_stool/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Office Chair with Computer Table', 'sets', 'NORMAL', 'no brand', null, 'office_set.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2000, '80x40', null, (SELECT product_id from product WHERE product_name='Office Chair with Computer Table' and brand='no brand'), 'office_set/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2100, '100x50', null, (SELECT product_id from product WHERE product_name='Office Chair with Computer Table' and brand='no brand'), 'office_set/2.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2100, '100x60', null, (SELECT product_id from product WHERE product_name='Office Chair with Computer Table' and brand='no brand'), 'office_set/3.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2150, '120x40', null, (SELECT product_id from product WHERE product_name='Office Chair with Computer Table' and brand='no brand'), 'office_set/4.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2150, '120x60', null, (SELECT product_id from product WHERE product_name='Office Chair with Computer Table' and brand='no brand'), 'office_set/5.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Rice Dispenser', 'others', 'NORMAL', 'no brand', null, 'rice_dispenser.png');
insert into specs (price, type1, type2, product_id, img_filename) values (775, '28kg', null, (SELECT product_id from product WHERE product_name='Rice Dispenser' and brand='no brand'), 'rice_dispenser/1.png');

insert into product (product_name, category, status, brand, body, img_filename) values ('Folding Table with Hampas Chair', 'sets', 'NORMAL', 'no brand', null, 'table_set.png');
insert into specs (price, type1, type2, product_id, img_filename) values (1500, '2-seater', null, (SELECT product_id from product WHERE product_name='Folding Table with Hampas Chair' and brand='no brand'), 'table_set/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2300, '4-seater', null, (SELECT product_id from product WHERE product_name='Folding Table with Hampas Chair' and brand='no brand'), 'table_set/1.png');
insert into specs (price, type1, type2, product_id, img_filename) values (2800, '6-seater', null, (SELECT product_id from product WHERE product_name='Folding Table with Hampas Chair' and brand='no brand'), 'table_set/1.png');

