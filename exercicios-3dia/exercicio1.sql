create database db_cidade_das_carnes;
use db_cidade_das_carnes;

-- criando tabela de categorias 
create table tb_categoria(
	id bigint(5) auto_increment,
    tipo varchar (255) not null,
    disponivel boolean,
    primary key(id)
);

-- popular com tabela com 5 dados
 insert into tb_categoria(tipo,disponivel) values ("Aves",true);
 insert into tb_categoria(tipo,disponivel) values ("Bovinas",true);
 insert into tb_categoria(tipo,disponivel) values ("Exóticas e especiais",true);
 insert into tb_categoria(tipo,disponivel) values ("Peixes e frutos do mar", true);
 insert into tb_categoria(tipo,disponivel) values ("Suinas",true);
 
 -- criando tabela de produtos
 create table  tb_produto(
 id bigint(5) auto_increment,
 nome varchar (255) not null,
 preco decimal not null,
 qtProduto int not null,
 categoria_id bigint,
 primary key (id),
foreign key(categoria_id) references tb_categoria (id)
 );
 
 -- popular com tabela com 8 dados
 insert into tb_produto(nome,preco,qtProduto,categoria_id) values ("Picanha",70.00,10,2);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Alcatra",20.00,30,2);
 insert into tb_produto(nome,preco,qtProduto,categoria_id) values ("Coxa e Sobrecoxa de Frango",18.00,10,1);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Pato",35.00,1,3);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Bacalhau",50.00,2,4);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Algas Marinhas", 30.00,10,4);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Bacon",35.00,10,5);
 insert into tb_produto(nome,preco,qtProduto) values ("Costela de Porco",40.00,5);
 
 -- select retorne produtos com preco > 50
  select * from tb_produto where preco>50;
  
  -- select retorne produtos com preco entre 3 e 60
  select * from tb_produto where preco BETWEEN 3 AND 60;
  
-- select retorne produtos com as letra do nome "CO"
  select * from tb_produto where nome like "%CO%";
  
-- select com Inner join entre tabela categoria e produto.
  select nome, preco, qtProduto, tb_categoria.tipo as descricao_da_categoria, tb_categoria.disponivel as estado_da_categoria from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
 
 -- select onde traga todos os Produtos de uma categoria específica
  select nome, preco, qtProduto, tb_categoria.tipo as descricao_da_categoria, tb_categoria.disponivel as estado_da_categoria from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo like "%Bovinas%";