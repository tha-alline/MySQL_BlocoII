CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tamanho enum ("Brotinho", "Média", "Família", "GrANDe"),
tipo enum ("Doce", "Salgada"),
id_pizza bigint, 
primary key (id)
);

CREATE TABLE tb_pizza(
id_pizza bigint auto_increment,
sabor_pizza varchar(255) not null,
preco decimal(10,2) check (preco > 0),
comBorda enum ("Catupiry", "Cheddar", "Cream Cheese", "Nenhum"),
stt boolean,
id_categoria bigint,
        
primary key (id_pizza),
foreign key(id_categoria) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (tamanho, tipo) VALUES ("Brotinho", "Salgada");
INSERT INTO tb_categoria (tamanho, tipo) VALUES	("Média", "Doce");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("Família", "Salgada");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("Brotinho", "Doce");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("GrANDe", "Salgada");

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Mussarela", 34.00, "Nenhum", true, 1);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Frango com Catupiry", 42.00, "Cheddar", true, 3);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Calabresa", 45.00, "Cream Cheese", false, 5);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Doce de leite com Coco", 40.00, "Nenhum", true, 2);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Chocolate com Morango", 55.00, "Nenhum", true, 4);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Atum", 45.00, "Catupiry", true, 3);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Peito de Peru", 55.00, "Cream Cheese", true, 3);
INSERT INTO tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) VALUES ("Portuguesa", 42.00, "Catupiry", false, 1);  

SELECT * FROM tb_pizza WHERE preco < 45.00;

SELECT * FROM tb_pizza WHERE preco between 29.00 AND 60.00;

SELECT * FROM tb_pizza WHERE sabor_pizza LIKE "C%";

 SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria
	AND tb_pizza.stt = true
	ORDER BY tb_pizza.id_pizza;
    
 SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria 
	AND tb_categoria.tipo = "Doce";   