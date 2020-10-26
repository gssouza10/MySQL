create database db_rh;
use db_rh;
-- criar tabela funcionarios
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(50) not null,
    cargo varchar(20) not null,
    ativo boolean,
    salario double not null,
    primary key(id)
);
-- popular tabela com 5 dados
insert into tb_funcionarios (nome, cargo, salario) 
	values("Gustavo","desenvolvedor junior",5000.00);
insert into tb_funcionarios (nome, cargo, salario) 
	values("Pedro","Marketing", 3.000);
insert into tb_funcionarios(nome, cargo, salario)
	values("Maria", "Estagiaria marketing", 1500.00);
insert into tb_funcionarios(nome, cargo, salario)
	values("Fernando","estagiario em dev", 1200.00);
insert into tb_funcionarios(nome, cargo, salario)
	values("Aline","Médica", 20000.00);

-- select retorne funcionarios com salario > 2000
	select * from tb_funcionarios where salario>2000;
-- select retorne funcionarios com salario < 2000   
	select * from tb_funcionarios where salario < 2000;
    
-- atualize um dado desta tabela
update tb_funcionarios set cargo = "desenvolvedor junior", salario = 2500.00 where id=5;