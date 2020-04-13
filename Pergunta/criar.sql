pragma foreign_keys=ON;
drop table if exists Product;
drop table if exists Package;

create table Product (
    id integer,
    price real
);
create table Package (
    id integer,
    idProd integer references Product(id) on update cascade not null,
    amount integer
);