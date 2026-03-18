INSERT INTO customers VALUES
(1, 'Amit', 'Delhi'),
(2, 'Sara', 'Mumbai'),
(3, 'John', 'Chennai'),
(4, 'Priya', 'Bangalore');

INSERT INTO products VALUES
(101, 'Laptop', 50000),
(102, 'Phone', 20000),
(103, 'Headphones', 2000),
(104, 'Tablet', 30000);

INSERT INTO orders VALUES
(1001, 1, '2024-01-10'),
(1002, 2, '2024-01-12'),
(1003, 1, '2024-02-05'),
(1004, 3, '2024-02-20'),
(1005, 4, '2024-03-01');

INSERT INTO order_details VALUES
(1001, 101, 1),
(1002, 102, 2),
(1003, 103, 3),
(1004, 104, 1),
(1005, 101, 1);

INSERT INTO payments VALUES
(1, 1001, 50000),
(2, 1002, 40000),
(3, 1003, 6000),
(4, 1004, 30000),
(5, 1005, 50000);
