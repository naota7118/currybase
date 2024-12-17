-- データベースを作成
CREATE DATABASE currybase_development;

-- データベースに接続
\connect currybase_development;

CREATE TABLE customers (
  customer_id int PRIMARY KEY,
  customer_name varchar(80) NOT NULL
);

CREATE TABLE categories (
  category_id int PRIMARY KEY,
  category_name varchar(80) NOT NULL
);

CREATE TABLE spicinesses (
  spiciness_id int PRIMARY KEY,
  spiciness_name varchar(80) NOT NULL,
  spiciness_price int NOT NULL 
);

CREATE TABLE ricesizes (
  ricesize_id int PRIMARY KEY,
  ricesize_name varchar(80) NOT NULL,
  ricesize_price int NOT NULL
);

CREATE TABLE curries (
  curry_id int PRIMARY KEY,
  curry_name varchar(80) NOT NULL,
  price int NOT NULL,
  category_id int REFERENCES categories(category_id)
);

-- 注文履歴
CREATE TABLE orders (
  order_id int PRIMARY KEY,
  curry_id int REFERENCES curries(curry_id),
  spicinesses_id int REFERENCES spicinesses(spiciness_id) DEFAULT 2,
  ricesize_id int REFERENCES ricesizes(ricesize_id) DEFAULT 4,
  order_price int NOT NULL DEFAULT 0
)