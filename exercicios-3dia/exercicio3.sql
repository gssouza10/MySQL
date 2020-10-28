create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- criando tabela de categorias 
create table tb_categoria(
	id bigint(5) auto_increment,
    tipo varchar (255) not null,
    disponivel boolean,
    primary key(id)
);

-- popular com tabela com 5 dados
 insert into tb_categoria(tipo,disponivel) values ("JAVA",true);
 insert into tb_categoria(tipo,disponivel) values ("PHP",true);
 insert into tb_categoria(tipo,disponivel) values ("HTML",true);
 insert into tb_categoria(tipo,disponivel) values ("SQL", true);
 insert into tb_categoria(tipo,disponivel) values ("PYTHON",true);
 
 -- criando tabela de produtos
 create table  tb_produto(
 id bigint(5) auto_increment,
 nome varchar (255) not null,
 preco decimal not null,
 qtMeses int not null,
 categoria_id bigint,
 primary key (id),
foreign key(categoria_id) references tb_categoria (id)
 );
 
 -- popular com tabela com 8 dados
 insert into tb_produto(nome,preco,qtMeses,categoria_id) values ("Dev Java Jr",70.00,3,1);
 insert into tb_produto(nome,preco,qtMeses,categoria_id)  values ("Dev Front-End",20.00,1,3);
 insert into tb_produto(nome,preco,qtMeses,categoria_id) values ("Data Science",180.00,5,5);
 insert into tb_produto(nome,preco,qtMeses,categoria_id)  values ("MySQL",25.00,1,4);
 insert into tb_produto(nome,preco,qtMeses,categoria_id)  values ("Dev Back-End",50.00,2,2);
 insert into tb_produto(nome,preco,qtMeses,categoria_id)  values ("Engenharia de Software", 300.00,2,1);
 insert into tb_produto(nome,preco,qtMeses,categoria_id)  values ("Framework",35.00,10,2);
 insert into tb_produto(nome,preco,qtMeses) values ("Web Full Stack",40.00,10);
 
 -- select retorne produtos com preco > 50
  select * from tb_produto where preco>50;
  
  -- select retorne produtos com preco entre 3 e 60
  select * from tb_produto where preco BETWEEN 3 AND 60;
  
-- select retorne produtos com as letra do nome "JAV"
  select * from tb_produto where nome like "%JAV%";
  
-- select com Inner join entre tabela categoria e produto.
  select nome, preco, qtMeses, tb_categoria.tipo as descricao_da_categoria, tb_categoria.disponivel as estado_da_categoria from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
 
 -- select onde traga todos os Produtos de uma categoria específica
  select nome, preco, qtMeses, tb_categoria.tipo as descricao_da_categoria, tb_categoria.disponivel as estado_da_categoria from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo like "%JAVA%";