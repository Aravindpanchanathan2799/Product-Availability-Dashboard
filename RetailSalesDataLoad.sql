USE RetailSales;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/Suppliers_Table.csv'
INTO TABLE Suppliers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(SupplierID, SupplierName);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/Products_Table.csv"
INTO TABLE Products
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(ProductID, ProductName, Category, SupplierID);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/Stores_Table.csv'
INTO TABLE Stores
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(StoreID, StoreName, Region, State);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.1/Uploads/Sales_Data_Table.csv'
INTO TABLE SalesData
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(ProductID, StoreID, Date, QuantitySold, StockLevel);
