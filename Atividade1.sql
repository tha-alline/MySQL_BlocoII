create database db_rh;
use db_rh;
-- DDL
Create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(25) not null,
sobrenome varchar (20) not null,
cpf varchar(11) not null,
salário int not null, 
ativo boolean,

primary key (id)
);

-- DML
insert into tb_funcionarios(nome, sobrenome, cpf, salário, ativo) values ("Aline", "Petrim", "11111111111", 1980, true);
insert into tb_funcionarios(nome, sobrenome, cpf, salário, ativo) values ("Beatriz", "Araujo", "22222222222", 2100, true);
insert into tb_funcionarios(nome, sobrenome, cpf, salário, ativo) values ("Yara", "Abou Chala", "33333333333", 2200, true);
insert into tb_funcionarios(nome, sobrenome, cpf, salário, ativo) values ("Fernanda", "Alves", "44444444444", 2300, true);
insert into tb_funcionarios(nome, sobrenome, cpf, salário, ativo) values ("Flavia", "Souza", "55555555555", 2400, true);

select * from tb_funcionarios
where salário > 2000;

select * from tb_funcionarios
where salário <= 2000;

/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade./*