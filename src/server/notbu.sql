DROP DATABASE IF EXISTS notbu;
CREATE DATABASE notbu;
USE notbu;

CREATE TABLE fullAddress (
    address_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    house_num varchar(50),
    street varchar(50),
    subdivision varchar(50),
    barangay varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    province varchar(50) NOT NULL,
    zip varchar(4) NOT NULL,
    landmark varchar(50)
);

CREATE TABLE customer (
    customer_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    username varchar(20),
    password varchar(72),
    contact_number varchar(11),
    address int default NULL,
    mop varchar(10),
    constraint customer_username_uk unique key (username),
    constraint customer_address_fk foreign key (address) references fullAddress(address_id)
    ON DELETE CASCADE
);

CREATE TABLE admin (
    admin_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username varchar(20),
    password varchar(72),
    constraint admin_username_uk unique key (username)
);

CREATE TABLE supplier (
    suppplier_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplier_name varchar(50) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    contact_number varchar(11),
    address int default NULL,
    constraint supplier_address_fk foreign key (address) references fullAddress(address_id)
    ON DELETE CASCADE
);

CREATE TABLE product (
    product_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name varchar(50) NOT NULL,
    category varchar(20) NOT NULL,
    status ENUM('SOLD OUT','NORMAL','ON SALE') NOT NULL,
    brand varchar(50) NOT NULL,
    body text,
    img_filename varchar(50) NOT NULL
);

CREATE TABLE specs (
    spec_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    price float NOT NULL,
    type1 varchar(50),
    type2 varchar(50),
    product_id int NOT NULL,
    img_filename varchar(50) NOT NULL,
    constraint spec_products_fk foreign key (product_id) references product(product_id)
    ON DELETE CASCADE
);

CREATE TABLE cart (
    cart_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_date datetime NOT NULL,
    total_amount float NOT NULL
);

CREATE TABLE orderItem (
    item_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quantity int NOT NULL,
    products int NOT NULL,
    orders int NOT NULL,
    constraint orderItem_products_fk foreign key (products) references product(product_id) ON DELETE CASCADE,
    constraint orderItem_orders_fk foreign key (orders) references cart(cart_id)
    ON DELETE CASCADE
);
