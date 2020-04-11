pragma foreign_keys=ON;
drop table if exists Produto;
drop table if exists Encomenda;

create table Produto (
    id integer,
    preco real
);
create table Encomenda (
    idEnc integer,
    idProd integer references Produto on update cascade not null,
    quantidade integer
);