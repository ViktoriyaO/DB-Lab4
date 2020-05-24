--Додавання інформації в таблицю  category

INSERT INTO category (cut) VALUES ('Ideal');

INSERT INTO category (cut) VALUES ('Good');

INSERT INTO category (cut) VALUES ('Fair');


--Додавання інформації в таблицю clarity

INSERT INTO clarity (clarity) VALUES ('IF');

INSERT INTO clarity (clarity) VALUES ('VS1');

INSERT INTO clarity (clarity) VALUES ('I1');


--Додавання інформації в таблицю  color

INSERT INTO color (color) VALUES ('D');

INSERT INTO color (color) VALUES ('G');

INSERT INTO color (color) VALUES ('J');


--Додавання інформації в таблицю diamond

INSERT INTO diamond (diamond_index, carat_weight, category_cut, clarity_clarity, color_color)
VALUES ('1', '0.23', 'Ideal', 'I1', 'J');

INSERT INTO diamond (diamond_index, carat_weight, category_cut, clarity_clarity, color_color)
VALUES ('2', '0.21', 'Fair', 'IF', 'J');

INSERT INTO diamond (diamond_index, carat_weight, category_cut, clarity_clarity, color_color)
VALUES ('3', '0.28', 'Good', 'VS1', 'D');


--Додавання інформації в таблицю ring

INSERT INTO ring (ring_index, diamond_diamond_index, diamond_category_cut, diamond_clarity_clarity, diamond_color_color)
VALUES ('11', '1', 'Ideal', 'I1', 'J');

INSERT INTO ring (ring_index, diamond_diamond_index, diamond_category_cut, diamond_clarity_clarity, diamond_color_color)
VALUES ('22', '2', 'Fair', 'IF', 'J');

INSERT INTO ring (ring_index, diamond_diamond_index, diamond_category_cut, diamond_clarity_clarity, diamond_color_color)
VALUES ('33', '3', 'Good', 'VS1', 'D');


--Додавання інформації в таблицю customer

INSERT INTO customer (id, customer_name, person_name, ring_ring_index, ring_diamond_diamond_index, 
ring_diamond_category_cut, ring_diamond_clarity_clarity, ring_diamond_color_color)
VALUES ('id000', 'Bob', 'Boba', '33', '3', 'Good', 'VS1', 'D');

INSERT INTO customer (id, customer_name, person_name, ring_ring_index, ring_diamond_diamond_index, 
ring_diamond_category_cut, ring_diamond_clarity_clarity, ring_diamond_color_color)
VALUES ('id111', 'Tom', 'Anna', '11', '1', 'Ideal', 'I1', 'J');

INSERT INTO customer (id, customer_name, person_name, ring_ring_index, ring_diamond_diamond_index, 
ring_diamond_category_cut, ring_diamond_clarity_clarity, ring_diamond_color_color)
VALUES ('id222', 'John', 'Mary', '22', '2', 'Fair', 'IF', 'J');

