create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

-- criando tabela de categorias 
create table tb_categoria(
	id bigint(5) auto_increment,
    tipo varchar (255) not null,
    disponivel boolean,
    primary key(id)
);

-- popular tabela com 5 dados
 insert into tb_categoria(tipo,disponivel) values ("Material de Construção",true);
 insert into tb_categoria(tipo,disponivel) values ("Material Hidráulico",true);
 insert into tb_categoria(tipo,disponivel) values ("Decoração",true);
 insert into tb_categoria(tipo,disponivel) values ("Piso e Revestimentos", true);
 insert into tb_categoria(tipo,disponivel) values ("Materal Elétrico",true);
 
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
 insert into tb_produto(nome,preco,qtProduto,categoria_id) values ("Cimento",30.00,2,1);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Rejunte",10.00,5,1);
 insert into tb_produto(nome,preco,qtProduto,categoria_id) values ("Caixa D' Água",100.00,1,2);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Chuveiro",135.00,1,2);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Persiana",150.00,1,3);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Porcelanato", 60.00,10,4);
 insert into tb_produto(nome,preco,qtProduto,categoria_id)  values ("Tomada",35.00,20,5);
 insert into tb_produto(nome,preco,qtProduto) values ("Interruptor",10.00,3);
 
 -- select retorne produtos com preco > 50
  select * from tb_produto where preco>50;
  
  -- select retorne produtos com preco entre 3 e 60
  select * from tb_produto where preco BETWEEN 3 AND 60;
  
-- select retorne produtos com as letra do nome "CO"
  select * from tb_produto where nome like "%CI%";
  
-- select com Inner join entre tabela categoria e produto.
  select nome, preco, qtProduto, tb_categoria.tipo as descricao_da_categoria, tb_categoria.disponivel as estado_da_categoria from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
 
 -- select onde traga todos os Produtos de uma categoria específica
  select nome, preco, qtProduto, tb_categoria.tipo as descricao_da_categoria, tb_categoria.disponivel as estado_da_categoria from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo like "%Material de Construção%";