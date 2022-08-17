CREATE TABLE orders11 (
  o_id NUMBER NOT NULL ,
  p_id NUMBER NOT NULL,
  u_id NUMBER NOT NULL,
  o_quantity NUMBER NOT NULL,
  o_date VARCHAR(450) NOT NULL);


INSERT INTO orders11 VALUES (25,3,1,3,'2021-05-15');
INSERT INTO orders11 VALUES (26,2,1,1,'2021-05-15');

CREATE TABLE products11 (
  id NUMBER NOT NULL ,
  name VARCHAR(450) NOT NULL,
  category VARCHAR(450) NOT NULL,
  price NUMBER NOT NULL,
  image VARCHAR(450) NOT NULL);

INSERT INTO products11 VALUES (1,'New Arrival Female bag','Female Bag',120,'download.jpg');
INSERT INTO products11 VALUES (2,'Men Watch','Men Watch',69.99,'download1.jpg');
INSERT INTO products11 VALUES (3,'Female Shoes','Female shoes',169,'female-shoes.jpg');
INSERT INTO products11 VALUES (4,'Indian Men suit','Men Suit',2500.99,'indian-mens-suit-500x500.jpg');
SELECT * FROM products11;


CREATE TABLE users1(
  id NUMBER NOT NULL ,
  name VARCHAR(250) NOT NULL,
  email VARCHAR(250) NOT NULL,
  password VARCHAR(250) NOT NULL);

INSERT INTO users1 VALUES (1,'Suhani','suhanigupta428@gmail.com','123456');
SELECT * FROM users1 ;
