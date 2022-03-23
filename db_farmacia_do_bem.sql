CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria bigint auto_increment,
    tarja varchar(255) not null,
	receita boolean,  -- true ou false
    
    primary key (id_categoria)
);

CREATE TABLE tb_produto (
	id_produto bigint auto_increment,
    nome varchar (35) not null,
	laboratorio varchar(35) not null,
	preco real,
	estoque int (3),
    
    key_categoria bigint,
    primary key (id_produto),
    foreign key (key_categoria) references tb_categoria(id_categoria)    
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (tarja, receita) VALUES ("Tarja Preta", True);
INSERT INTO tb_categoria (tarja, receita) VALUES ("Tarja Vermelha com receita", true);
INSERT INTO tb_categoria (tarja, receita) VALUES ("Tarja Vermelha sem receita", true);
INSERT INTO tb_categoria (tarja, receita) VALUES ("Sem Tarja", false);
INSERT INTO tb_categoria (tarja, receita) VALUES ("Tarja Amarela (Genérico)", null);	
                
SELECT * FROM tb_produto;           

INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Sibutramina 15mg Genérico ", "EMS", 44.99, 60, 1);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Alprazolam 0,5mg", "Legrand", 6.18, 105, 2);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Alprazolam 25mg", "EMS", 6.48, 35, 1);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Acetilcisteína 600mg", "Eurofarma", 24.47, 90, 5);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Bromazepam 3mg Medley 30", "Medley", 77.99, 35, 2);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Neosaldina 30 Drágeas", "Takeda", 35.90, 60, 4);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Cloridrato De Fluoxetina 20mg", "Teuto", 55.73 ,79, 3);
INSERT INTO tb_produto (nome, laboratorio, preco, estoque, key_categoria) VALUES ("Cloridrato de Bromexina 8mg/5mL", "Medley", 21.23, 52, 5);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "B%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.key_categoria 
	ORDER BY tb_produto.nome;
    
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.key_categoria 
	WHERE tb_categoria.tarja = "Tarja Preta";
    
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.key_categoria 
	WHERE tb_categoria.tarja LIKE "%Gen%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.key_categoria 
	WHERE tb_categoria.tarja LIKE "Sem%";