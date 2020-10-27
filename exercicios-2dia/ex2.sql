create database db_ecommerce;
 use db_ecommerce;
-- criar tabela categoria
create table tb_categoria(
   id bigint auto_increment,
  tipo varchar(20) not null,
  disponivel boolean,
  primary key(id)
 );
-- popular tabela com 5 dados
 insert into tb_categoria(tipo,disponivel) values ("Eletrônico",true);
 insert into tb_categoria(tipo,disponivel) values ("Eletrodoméstico",true);
 insert into tb_categoria(tipo,disponivel) values ("Móveis",true);
 insert into tb_categoria(tipo,disponivel) values ("Moda", true);
 insert into tb_categoria(tipo,disponivel) values ("Bijuterias",true);

 use db_ecommerce;
 
-- criar tabela produto
 create table tb_produto(
 id bigint auto_increment,
 nome varchar(50) not null,
 preco decimal(10,2),
 marca varchar(30) not null,
 categoria_id bigint not null,
 primary key(id),
 foreign key (categoria_id) references tb_categoria (id)
);
-- popular tabela com 15 dados
 insert into tb_produto(nome,preco,marca,categoria_id) values ("IPHONE 12",5000.00,"Apple",1);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Notebook XPS",3000.00,"Dell",1);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Tv 42 polegadas",2000.00,"Samsung",1);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Playstation 5",5000.00,"Sony",1);
 insert into tb_produto(nome,preco,marca,categoria_id) values ("Xbox One",1800.00,"Microsoft",1);
 insert into tb_produto(nome,preco,marca,categoria_id) values ("Aspirador de pó",1500.00,"Philco",2);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Liquidificador",3500.00,"Mondial",2);
 insert into tb_produto(nome,preco,marca,categoria_id) values ("Fogão",6500.00,"Electrolux", 2);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Camiseta","500.00","Lacoste",4);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Calça Jeans",200.00,"Calvin Klein",4);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Blusa de frio", 3000.00,"Supreme",4);
 insert into tb_produto(nome,preco,marca,categoria_id)  values ("Guarda-Roupa",3500.00,"Atenas",3);
 insert into tb_produto(nome,preco,marca,categoria_id) values ("Cama box",4000.00,"Simbal",3);
 insert into tb_produto(nome,preco,marca,categoria_id) values ("Pulseira", 3000.00,"Pandora",5);
 insert into tb_produto(nome,preco,marca,categoria_id) values ("Anel",300.00,"Vivara",5);
-- select retorne produtos com preco > 2000
  select * from tb_produto where preco>2000;
  -- select retorne produtos com preco entre 1000 e 2000
  select * from tb_produto where preco BETWEEN 1000 AND 2000;
-- select retorne produtos com a letra inicial do nome "C"
  select * from tb_produto where nome like "C%";