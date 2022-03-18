create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint(8) auto_increment,
nome varchar(20) not null, 
marca varchar(20) not null,
cor varchar(20) not null,
preco int not null,

primary key(id)
);

insert into tb_produtos(nome, marca, cor, preco)
values
("Moto E7 Plus", "Motorola", "Azul", 1000),
("Moto G20", "Motorola", "Preto", 1050),
("Galaxy 02", "Samsung", "Branco", 500),
("Galaxy M21s", "Samsung", "Rose", 1400),
("Xiaomi Redmi Note 9", "Xiaomi", "Azul Claro", 1200),
("Redmi Note 10", "Xiaomi", "Branco", 1700),
("iPhone 11", "Apple", "Cinza", 3900),
("iPhone SE", "Apple", "Rose", 3000);

select * from tb_produtos
where preco > 500;

select * from tb_produtos
where preco <= 500;

/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/