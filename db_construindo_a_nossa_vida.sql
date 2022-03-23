CREATE DATABASE db_cONstruindo_a_nossa_vida;

USE db_cONstruindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
classe varchar(35) not null,
entrada timestamp,

primary key (id)
);

create table tb_produto (
id_produto bigint auto_increment,
nome varchar(35) not null,
marca varchar(35) not null,
dimensoes varchar(35) not null,
preco decimal (6,2) check (preco >0),

fk_categoria bigint,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (classe, entrada) VALUES ("CONstrução Civil", current_timestamp());
INSERT INTO tb_categoria (classe, entrada) VALUES ("Hidráulica", current_timestamp());
INSERT INTO tb_categoria (classe, entrada) VALUES ("Elétrico", current_timestamp());
INSERT INTO tb_categoria (classe, entrada) VALUES ("Madeira", current_timestamp());
            
SELECT * FROM tb_produto;        
   
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES ("Cimento Cauê", "Exato", "50 Kg", 27.90, 1);
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES	("Adaptador para caixa D'Água", "Plastilit", 1, 11.90, 2);
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES ("Joelho 90° soldável", "Amanco", "25 mm", 0.73, 2);
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES ("Fio rigído Vermelho 750v 10 m", "Tekfio", "10 mm", 159.90, 3);
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES ("PlafON Decorativo OctogONal", "Trioplast", "15 x 15 cm", 13.42, 3);
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES ("Folha de Porta de Giro Colmeia", "Eucaplac", "2.10 x 0.8 m", 156.99, 4);
INSERT INTO  tb_produto(nome, marca, dimensoes, preco, fk_categoria) VALUES ("Prateleira de Madeira e Flutuante", "Rusty", "95 cm", 102.99, 4);
            
SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM  tb_produto WHERE nome LIKE "C%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.fk_categoria
	ORDER BY fk_categoria;
    
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.fk_categoria
	WHERE tb_categoria.classe LIKE "Madeira";