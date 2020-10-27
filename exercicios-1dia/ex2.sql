create database db_ecommerce;
use db_ecommerce;

create table tb_ecomprodutos(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2),
    marca varchar(30) not null,
    disponivel boolean,
    primary key(id)
);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("Redmi Note 7", 1000.00, "Xiaomi", true);
    
insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("IPHONE 12", 15000.00, "Apple", true);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("Moto G2", 200.00, "Motorola", true);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("Galaxy S20", 4100.00, "Samsung", true);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("Zenphone 3", 470.00, "Asus", false);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("Mi9", 3000.00, "Xiaomi", false);
    
insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("IPHONE 7", 2000.00, "Apple", true);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("IPHONE 8", 1200.00, "Apple", true);

insert into tb_ecomprodutos(nome, preco, marca, disponivel)
	values("Redmi 9 Note", 2990.00, "Xiaomi", false);
    
select * from tb_ecomprodutos where preco>500.00;

select * from tb_ecomprodutos where preco<500.00;

update tb_ecomprodutos set disponivel = false where id = 3;
