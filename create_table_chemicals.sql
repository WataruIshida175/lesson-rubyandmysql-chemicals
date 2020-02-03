CREATE TABLE chemicals.chemicals (
  id INT NOT NULL PRIMARY KEY,
  chemical_name VARCHAR(100),
  average_price  INT,
  agribank_price INT,
  unit VARCHAR(10)
);