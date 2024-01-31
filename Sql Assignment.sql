CREATE TABLE product_info (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255)
);

insert into product_info values(1001,"Blog"),
(1002,"YouTube"),
(1003,"Education");

CREATE TABLE likes (
    like_id INT PRIMARY KEY,
    product_id INT,
    like_date DATE,
    FOREIGN KEY (product_id) REFERENCES product_info(product_id)
);

insert into likes values(1,1001,'2023-08-19'),
(2,1003,'2023-08-18');

SELECT product_info.product_name
FROM product_info
LEFT JOIN likes ON product_info.product_id = likes.product_id
WHERE likes.like_id IS NULL;