
DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer 
  ( 
     custid       SERIAL PRIMARY KEY NOT NULL, 
     contactname  VARCHAR (30) NULL, 
     contacttitle VARCHAR (30) NULL, 
     address      VARCHAR (60) NULL, 
     city         VARCHAR (15) NULL, 
     region       VARCHAR (15) NULL, 
     postalcode   VARCHAR (10) NULL, 
     country      VARCHAR (15) NULL, 
     phone        VARCHAR (24) NULL, 
     fax          VARCHAR (24) NULL
  ); 


DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee 
  ( 
     empid      SERIAL  PRIMARY KEY NOT NULL, 
     lastname        VARCHAR (20) NOT NULL, 
     firstname       VARCHAR (10) NOT NULL, 
     title           VARCHAR (30) NULL, 
     birthdate       TIMESTAMP NULL, 
     hiredate        TIMESTAMP NULL, 
     address         VARCHAR (60) NULL, 
     city            VARCHAR (15) NULL, 
     region          VARCHAR (15) NULL, 
     postalcode      VARCHAR (10) NULL, 
     country         VARCHAR (15) NULL, 
     phone           VARCHAR (24) NULL, 
     photo           VARCHAR (500) NULL
  ); 

DROP TABLE IF EXISTS Product;
CREATE TABLE  Product
  ( 
     productid       SERIAL PRIMARY KEY NOT NULL, 
     productname     VARCHAR (40) NOT NULL, 
     productdescription VARCHAR (500) NULL,
     unitprice       DECIMAL(10, 2) NULL, 
     unitsinstock    SMALLINT NULL,
     photo           VARCHAR (500) NULL
  ); 

DROP TABLE IF EXISTS SalesOrder;
CREATE TABLE SalesOrder 
  ( 
     orderid        SERIAL PRIMARY KEY NOT NULL, 
     custid         VARCHAR (15) NULL, 
     empid          INT NULL, 
     orderdate      TIMESTAMP NULL, 
     requireddate   TIMESTAMP NULL, 
     shippeddate    TIMESTAMP NULL,
     shipaddress    VARCHAR (60) NULL, 
     shipcity       VARCHAR (15) NULL, 
     shipregion     VARCHAR (15) NULL, 
     shippostalcode VARCHAR (10) NULL, 
     shipcountry    VARCHAR (15) NULL, 
     chargeid       VARCHAR (60) NULL
  ); 

DROP TABLE IF EXISTS OrderDetail;
CREATE TABLE OrderDetail 
  ( 
     orderid   INT NOT NULL, 
     productid INT NOT NULL, 
     unitprice DECIMAL(10, 2) NOT NULL, 
     qty       SMALLINT NOT NULL, 
     discount  DECIMAL(10, 2) NOT NULL 
  );

INSERT INTO Employee(empid, lastname, firstname, title, birthdate, hiredate, address, city, region, postalcode, country, phone, photo)
  VALUES(1, N'Davis', N'Sara', N'CEO', '19581208 00:00:00.000', '20020501 00:00:00.000', N'7890 - 20th Ave. E., Apt. 2A', N'Seattle', N'WA', N'10003', N'USA', N'(206) 555-0101', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO Employee(empid, lastname, firstname, title, birthdate, hiredate, address, city, region, postalcode, country, phone, photo)
  VALUES(2, N'Funk', N'Don', N'Vice President, Sales', '19620219 00:00:00.000', '20020814 00:00:00.000', N'9012 W. Capital Way', N'Tacoma', N'WA', N'10001', N'USA', N'(206) 555-0100', 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80');
INSERT INTO Employee(empid, lastname, firstname, title, birthdate, hiredate, address, city, region, postalcode, country, phone, photo)
  VALUES(3, N'Lew', N'Judy', N'Sales Manager', '19730830 00:00:00.000', '20020401 00:00:00.000', N'2345 Moss Bay Blvd.', N'Kirkland', N'WA', N'10007', N'USA', N'(206) 555-0103', 'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1361&q=80');

INSERT INTO Product(productid, productname, productdescription, unitprice, unitsinstock, photo)
  VALUES(1, N'Apple iPhone 7 32GB', 'iPhone 7 dramatically evolves the important aspects of the iPhone experience. It introduces an advanced new camera. The best performance and battery life ever in an iPhone. Immersive stereo speakers. The brightest, most vibrant iPhone display. Splash and water resistance. It looks every bit as powerful as it is. This is iPhone 7.', 340.00, 10, 'https://s3-eu-west-1.amazonaws.com/images.linnlive.com/1d90ce0e150660b417b0f09197658219/43b9c92b-a4f2-478f-9028-60f811da817a.jpg');
INSERT INTO Product(productid, productname, productdescription, unitprice, unitsinstock, photo)
  VALUES(2, N'Samsung Galaxy S22', 'The Samsung Galaxy S22 is small, fast, and offers a clean and reliable Android experience.', 298.00, 15, 'https://images.samsung.com/is/image/samsung/p6pim/uk/2202/gallery/uk-galaxy-s22-s901-sm-s901bzadeub-530845950?$2052_1641_PNG$');
INSERT INTO Product(productid, productname, productdescription, unitprice, unitsinstock, photo)
  VALUES(3, N'Apple IPhone 12 64GB', 'The iPhone 12 sports a gorgeous design, full 5G support, great cameras and even better performance.', 348.00, 12, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-family-select-2021?wid=940&hei=1112&fmt=jpeg&qlt=90&.v=1617135051000');

INSERT INTO Customer(custid, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(1,  N'Allen, Michael', N'Sales Representative', N'Obere Str. 0123', N'Berlin', NULL, N'10092', N'Germany', N'030-3456789', N'030-0123456');
INSERT INTO Customer(custid, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(2,  N'Hassall, Mark', N'Owner', N'Avda. de la Constitución 5678', N'México D.F.', NULL, N'10077', N'Mexico', N'(5) 789-0123', N'(5) 456-7890');
INSERT INTO Customer(custid, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
  VALUES(3, N'Peoples, John', N'Owner', N'Mataderos  7890', N'México D.F.', NULL, N'10097', N'Mexico', N'(5) 123-4567', NULL);
     
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10248, 1, 2, '20060704 00:00:00.000', '20060801 00:00:00.000', '20060716 00:00:00.000', N'6789 rue de l''Abbaye', N'Reims', NULL, N'10345', N'France', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10249, 2, 2, '20060705 00:00:00.000', '20060816 00:00:00.000', '20060710 00:00:00.000', N'Luisenstr. 9012', N'Münster', NULL, N'10328', N'Germany', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10250, 3, 1, '20060708 00:00:00.000', '20060805 00:00:00.000', '20060712 00:00:00.000', N'Rua do Paço, 7890', N'Rio de Janeiro', N'RJ', N'10195', N'Brazil', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
  INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10251, 3, 3, '20060708 00:00:00.000', '20060805 00:00:00.000', '20060715 00:00:00.000', N'3456, rue du Commerce', N'Lyon', NULL, N'10342', N'France', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10252, 2, 3, '20060709 00:00:00.000', '20060806 00:00:00.000', '20060711 00:00:00.000', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10253, 1, 2, '20060710 00:00:00.000', '20060724 00:00:00.000', '20060716 00:00:00.000', N'Rua do Paço, 8901', N'Rio de Janeiro', N'RJ', N'10196', N'Brazil', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10254, 2, 1, '20060711 00:00:00.000', '20060808 00:00:00.000', '20060723 00:00:00.000', N'Hauptstr. 1234', N'Bern', NULL, N'10139', N'Switzerland', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10255, 1, 3, '20060712 00:00:00.000', '20060809 00:00:00.000', '20060715 00:00:00.000', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10256, 2, 2, '20060715 00:00:00.000', '20060812 00:00:00.000', '20060717 00:00:00.000', N'Rua do Mercado, 5678', N'Resende', N'SP', N'10354', N'Brazil', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10257, 3, 1, '20060716 00:00:00.000', '20060813 00:00:00.000', '20060722 00:00:00.000', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');
INSERT INTO SalesOrder(orderid, custid, empid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry, chargeid)
  VALUES(10258, 1, 3, '20060717 00:00:00.000', '20060814 00:00:00.000', '20060723 00:00:00.000', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria', 'ch_3LfiQKL67YjL0oPo1AXBQ3Nq');

INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10248, 3, 348.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10249, 2, 298.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10250, 1, 340.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10251, 1, 340.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10251, 2, 298.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10252, 3, 348.00, 2, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10253, 2, 298.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10254, 2, 298.00, 2, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10255, 1, 340.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10256, 2, 298.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10257, 2, 298.00, 1, 0);
INSERT INTO OrderDetail(orderid, productid, unitprice, qty, discount)
  VALUES(10258, 1, 340.00, 1, 0);