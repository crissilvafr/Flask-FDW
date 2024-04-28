CREATE TABLE Productos
(
  id INT PRIMARY KEY,
  nombre VARCHAR(45),
  precio DECIMAL(10, 2)
);

INSERT into Productos (id, nombre, precio) VALUES 
(1, 'Cafe', 100.00), 
(2, 'Soda', 200.00), 
(3, 'Donas', 300.00), 
(4, 'Pollo', 400.00), 
(5, 'Tortilla', 500.00),
(6, 'Huevo', 600.00),
(7, 'Aguacate', 700.00),
(8, 'Platanos', 800.00),
(9, 'Manzana', 900.00),
(10, 'Jamon', 1000.00);