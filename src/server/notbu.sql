DROP DATABASE IF EXISTS notbu;
CREATE DATABASE notbu;
USE notbu;

CREATE TABLE fullAddress (
    address_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    house_num varchar(50) NOT NULL,
    street varchar(50) NOT NULL,
    subdivision varchar(50) NOT NULL,
    barangay varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    province varchar(50) NOT NULL,
    zip varchar(50) NOT NULL,
    landmark varchar(50) NOT NULL
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
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    contact_number varchar(11),
    address int default NULL,
    constraint supplier_address_fk foreign key (address) references fullAddress(address_id)
    ON DELETE CASCADE
);

CREATE TABLE specification (
    spec_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type varchar(50) NOT NULL,
    color varchar(50) NOT NULL,
    brand varchar(50) NOT NULL
);

CREATE TABLE product (
    product_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name varchar(50) NOT NULL,
    price float NOT NULL,
    category varchar(20) NOT NULL,
    status ENUM('SOLD OUT','NORMAL','ON SALE') NOT NULL,
    specs int default NULL,
    constraint product_specs_fk foreign key (specs) references specification(spec_id)
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
