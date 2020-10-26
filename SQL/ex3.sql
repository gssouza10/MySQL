create database db_alunos_reg;
use db_alunos_reg;

create table tb_alunos(
	id bigint auto_increment,
    nome_completo varchar(50) not null,
    matricula varchar(8) not null,
    nota decimal(10,2),
	curso varchar(30) not null,
    primary key(id)
);

insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Gustavo Souza", 01100191, 10.00, "Sistemas para Internet");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Leonardo Zuniga", 02100910, 7.50, "Marketing");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Beatriz Limeira", 03202110, 4.00, "Administracao");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Paulo Reis", 04106231, 6.00, "Medicina");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Paula Fernandes", 05401331, 3.00, "Letras");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Fernanda Goncalves", 06705421, 10.00, "TI");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Roberto Luis", 07301451, 5.00, "Matemática");
insert into tb_alunos(nome_completo, matricula, nota, curso)
	values("Anne Rice", 08958200, 8.50, "Engenharia Civil");
    
select * from tb_alunos where nota>7.00;
select * from tb_alunos where nota<7.00;

update tb_alunos set nota = 6.50 where id = 4;
