create database db_rh2;
 use db_rh2;
-- criar tabela cargo
create table tb_cargo(
   id bigint auto_increment,
  cargo varchar(20) not null,
  periodo varchar(20) not null,
  ativo boolean,
  primary key(id)
 );
-- popular tabela com 5 dados
 insert into tb_cargo(cargo,periodo,ativo) values ("Dev Jr", "Noturno",true);
 insert into tb_cargo(cargo,periodo,ativo) values ("Engenheiro Civil", "Manhã",true);
 insert into tb_cargo(cargo,periodo,ativo) values ("Médica", "tarde",true);
 insert into tb_cargo(cargo,periodo,ativo) values ("Fisioterapeuta", "Noturno",true);
 insert into tb_cargo(cargo,periodo,ativo) values ("Dev Java", "Noturno",true);

 use db_rh2;
 
-- criar tabela funcionarios
 create table tb_funcionarios(
 id bigint auto_increment,
 nome varchar(50) not null,
 idade int,
 salario double not null,
 cargo_id bigint not null,
 primary key(id),
 foreign key (cargo_id) references tb_cargo (id)
);
-- popular tabela com 15 dados
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Gustavo",20, 5000.00,1);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Fernanda",18, 3000.00,3);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Claudia",30, 2000.00,4);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Luiza",20, 1000.00,2);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Guilherme",24, 1000.00,3);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("João",32, 1500.00,2);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Caio",21, 3500.00,1);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Gabriela",25, 6500.00,1);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Pedro",54, 2500.00,2);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Maria",60, 2000.00,3);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Aline",33, 1000.00,5);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Alan",29, 3500.00,4);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Karen",41, 4000.00,3);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Luis",22, 3000.00,2);
 insert into tb_funcionarios(nome,idade,salario,cargo_id) values ("Gustavo",24, 1100.00,1);
-- select retorne funcionarios com salario > 2000
  select * from tb_funcionarios where salario>2000;
  -- select retorne funcionarios com salario entre 1000 e 2000
  select * from tb_funcionarios where salario BETWEEN 1000 AND 2000;
-- select retorne funcionarios com a letra inicial do nome "C"
  select * from tb_funcionarios where nome like "C%";
