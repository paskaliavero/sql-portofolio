CREATE TABLE outlet(
    id_outlet SERIAl PRIMARY KEY,
    outlet_name VARCHAR(100),
    address text,
    region VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE employee (
    id_employee SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    id_outlet INT REFERENCES outlet (id_outlet)
);

CREATE TABLE supplier (
    id_supplier SERIAL PRIMARY KEY,
    supplier_name VARCHAR(50),
    phone VARCHAR(20)
);

CREATE category (
    id_category SERIAL PRIMARY KEY,
    category_name VARCHAR(20)
);

CREATE TABLE product(
    id_product SERIAL PRIMARY KEY,
    product_name VARCHAR (30),
    id_category INT REFERENCES category(id_category)
    price INT
);

CREATE TABLE transaction(
    id_transaction SERIAL PRIMARY KEY,
    date DATETIME;
    id_outlet INT REFERENCES outlet(id_outlet),
    id_employee INT REFERENCES employee(id_employee)
);

CREATE TABLE transaction_detail (
    id_detail SERIAL PRIMARY KEY,
    id_transaction INT REFERENCES transaction(id_transaction),
    id_product INT REFERENCES product(id_product),
    quantity INT,
    subtotal INT
);
