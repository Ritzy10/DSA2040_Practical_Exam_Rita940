-- Enable foreign key constraints
PRAGMA foreign_keys = ON;

-- Dimension Table: Customer
CREATE TABLE Customer (
  customer_id INTEGER PRIMARY KEY,
  customer_name TEXT,
  country TEXT,
  total_purchases REAL,
  join_date TEXT
);

-- Dimension Table: Product
CREATE TABLE Product (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT,
  category TEXT,
  subcategory TEXT,
  unit_price REAL
);

-- Dimension Table: Time
CREATE TABLE Time (
  time_id INTEGER PRIMARY KEY,
  date TEXT,
  day INTEGER,
  month INTEGER,
  quarter INTEGER,
  year INTEGER,
  is_weekend INTEGER
);

-- Fact Table: SalesFact
CREATE TABLE SalesFact (
  sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
  invoice_no TEXT,
  product_id INTEGER,
  customer_id INTEGER,
  time_id INTEGER,
  quantity INTEGER,
  unit_price REAL,
  total_sales REAL,
  country TEXT,
  FOREIGN KEY(product_id) REFERENCES Product(product_id),
  FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY(time_id) REFERENCES Time(time_id)
);

