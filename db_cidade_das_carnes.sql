CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint auto_increment,
animal varchar(35) not null,
data_fab timestamp,

primary key (id)
);

CREATE TABLE tb_produto(
id_produto bigint auto_increment,
tipo varchar(35) not null,
marca varchar(35) not null,
peso decimal (6,3) check (peso > 0),
preco decimal (5,2) check (preco >0),


fk_categoria bigint,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria (id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (animal, data_fab) VALUES ("Bovino", current_timestamp());
INSERT INTO tb_categoria (animal, data_fab) VALUES ("Aves", current_timestamp());
INSERT INTO tb_categoria (animal, data_fab) VALUES ("Suína", current_timestamp());
INSERT INTO tb_categoria (animal, data_fab) VALUES ("Peixe", current_timestamp());
INSERT INTO tb_categoria (animal, data_fab) VALUES ("Caprino", current_timestamp());
		
SELECT * FROM tb_produto;  

INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Coxa SobreCoxa", "Seara", 1, 14.90, 2);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Patino Moído", "FriBoi", 1, 32.99, 1);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Filé Tilapia", "Costa Sul", 0.800, 35.60, 4);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Costela de Cordeiro", "Swift", 1.2, 59.97, 5);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("BabyBeef-Pedaço", "Angus", 2.5, 115.70, 1);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Bisteca Suína", "Sadia", 1, 19.99, 3);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Linguiça de Frango", "Korin", 0.800, 17.29, 2);
INSERT INTO tb_produto(tipo, marca, peso, preco, fk_categoria) VALUES ("Filé de Merluza", "Polako", 0.800, 26.15, 4);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.fk_categoria
	ORDER BY tb_produto.fk_categoria;
    
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.fk_categoria
	WHERE tb_categoria.animal = "Bovino";