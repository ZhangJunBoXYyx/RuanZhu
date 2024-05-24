CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE anomaly_records (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id VARCHAR(50) NOT NULL,
  year INT NOT NULL,
  month INT NOT NULL,
  type ENUM('A', 'B', 'C') NOT NULL,
  UNIQUE (item_id, year, month)
);

CREATE TABLE feedback (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  content TEXT NOT NULL,
  submit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
