CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
curso enum ("Java", "PythON", "Javascript"),
tempo varchar(255) not null,

primary key (id)
);

CREATE TABLE tb_curso(
id_curso bigint auto_increment,
aluno varchar(255) not null,
turma varchar (255),
nota decimal (4,2) check (nota >= 0),
final enum ("A", "R"),

fk_categoria bigint,
primary key (id_curso),
foreign key (fk_categoria) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(curso, tempo) VALUES ("Java", "2 anos");
INSERT INTO	tb_categoria(curso, tempo) VALUES ("PythON", "6 meses");
INSERT INTO  tb_categoria(curso, tempo) VALUES ("Javascript", "1 ano");
            
SELECT * FROM tb_curso;
         
 INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES ("Aline", "Alfa", 9.9, "A", 1);
 INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES ("Beatriz", "Omega", 8.5, "A", 3);
 INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES ("Barbara", "Delta", 5.0, "R", 2);
 INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES  ("FernANDa", "Omega", "10.0", "A", 3);
 INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES ("Flávia", "Alfa", 5.8, "R", 1);
INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES ("Joice", "Delta", 7.5, "A", 2);
INSERT INTO tb_curso(aluno, turma, nota, final, fk_categoria) VALUES ("Yara", "Delta", 10.0, "A", 2);      
            
SELECT * FROM tb_curso WHERE nota > 9;
SELECT * FROM tb_curso WHERE nota BETWEEN 5 AND 7;
SELECT * FROM tb_curso WHERE aluno LIKE "B%";

SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id = tb_curso.fk_categoria
	ORDER BY nota desc;
    
SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id = tb_curso.fk_categoria
	WHERE tb_curso.final = "A"
    ORDER BY tb_curso.nota desc;