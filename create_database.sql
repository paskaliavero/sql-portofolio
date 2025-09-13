/* 
    Create Tables :
    - outlet
    - employee
    - supplier
    - category
    - product
    - transaction
    - transaction_detail
*/

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


-- Insert some data into the tables --
INSERT INTO outlet (outlet_name, address, region, phone) VALUES 
    ('Halte Balai Kota', 'Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 'Jakarta Pusat','085288984561'),
    ('Halte Bundaran HI', 'Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 'Jakarta Pusat', '08794621354'),
    ('Halte Bunderan Senayan', 'Halte Busway Bundaran Senayan, RT.1/RW.3, Senayan, Kec. Kby. Baru, Kota Jakarta Selatan', 'Jakarta Selatan', '089764521346'),
    ('Halte Cawang Central', 'Halte Bus Transjakarta Cawang Sentral, Jl. Mayjen Sutoyo No.5, RW.11, Cawang, Kec. Kramat jati, Kota Jakarta Timur', 'Jakarta Timur', '086457951324'),
    ('Halte CSW', 'Jl. Trunojoyo No.1, Melawai, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', 'Jakarta Selatan', '087964523146'),
    ('Halte Dukuh Atas', 'Dukuh Atas, Menteng, Kecamatan Setiabudi, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 'Jakarta Pusat', '085246791346'),
    ('Halte Juanda', 'Jl. Ir H. Juanda I B No.2 7, RT.13/RW.1, Kb. Klp., Kecamatan Gambir, Kota Jakarta Pusat', 'Jakarta Pusat', '085246791526'),
    ('Halte Kampung Melayu', 'Bali Mester, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta', 'Jakarta Pusat', '087946521346'),
    ('Halte Karet Sudirman', 'Jl. Jend. Sudirman No.Kav 25, Kota SelatanSetia Budi, Karet, Kecamatan, Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', 'Jakarta Pusat', '087964521346'),
    ('Halte Monas', 'Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 'Jakarta Pusat', '081346798546');

INSERT INTO employee (employee_name, id_outlet) VALUES 
    ('Silvia', 1),
    ('Roger', 1),
    ('Anna', 2),
    ('Belle', 2),
    ('Joshua', 3),
    ('Shavira', 3),
    ('Shafa', 4),
    ('Vania', 4),
    ('Jessica', 5),
    ('Maulana', 5),
    ('Gabriel', 6),
    ('Rexa', 6),
    ('Rafael', 7),
    ('Narnia', 7),
    ('Evan', 8),
    ('Viona', 8),
    ('David', 9),
    ('Jonathan', 9),
    ('Nicholas', 10),
    ('Keisha', 10);
