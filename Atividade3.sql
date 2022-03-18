create database db_escola; -- criando o banco de dados.

use db_escola;

create table tb_estudantes(  -- criando a tabela.
id bigint(8) auto_increment, -- na tabela podemos ter apenas um dado "auto increment"
nome varchar(255) not null,
série varchar(255) not null,
materia varchar(255) not null,
nota int not null,

primary key(id) -- não esquecer de colocar a "chave" key
);

insert into tb_estudantes(nome, série, materia, nota) values ("Aline", "1º série", "Português", 4);
insert into tb_estudantes(nome, série, materia, nota) values ("Beatriz", "1º série", "Matemática", 2);
insert into tb_estudantes(nome, série, materia, nota) values ("Isabel", "1º série", "Inglês", 3);
insert into tb_estudantes(nome, série, materia, nota) values ("Larissa", "2º série", "Geografia", 5);
insert into tb_estudantes(nome, série, materia, nota) values ("Luara", "2º série", "História", 6);
insert into tb_estudantes(nome, série, materia, nota) values ("Miriam", "2º série", "Ciências", 7);
insert into tb_estudantes(nome, série, materia, nota) values ("Silvia", "2º série", "Física", 8);
insert into tb_estudantes(nome, série, materia, nota) values ("Thaís", "3º série", "Química", 9);
insert into tb_estudantes(nome, série, materia, nota) values ("Yara", "3º série", "Matemática", 10);

select * from tb_estudantes
where nota >= 7;

select * from tb_estudantes
where nota < 7;

update tb_estudantes set nota = 10 where id = 6; -- pra atualizar use update.

delete from tb_estudantes where id = 9;

 /*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/