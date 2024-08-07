create schema if not exists playtech;

use playtech;


create table if not exists roles (
rolId integer not null auto_increment,
codigo VARCHAR(5) not null,
rol varchar(15),
primary key (rolId)
)

create table if not exists usuario (
usuarioId int not null auto_increment,
nombre varchar(100) not null,
email varchar(100) not null unique,
password varchar(150) not null,
activo tinyint not null,
rolId integer,
primary key (usuarioId),
constraint FK_usuario_roles foreign key (rolId) references roles(rolId)
)

create table if not exists producto (
productoId int not null auto_increment,
tipoDeProducto varchar(30),
modelo varchar(100),
precio int not null,
foto varchar(2000),
color varchar(100),
descripcion varchar(2000),
stock int not null,
fotoDelete varchar(1000),
fotoDisplay varchar(1000),
primary key (productoId)
)

create table compra (
compraId int not null auto_increment,
fecha DATETIME,
primary key (compraId),
productoId integer,
usuarioId integer,
constraint FK_compra_producto foreign key (productoId) references producto(productoId),
constraint FK_compra_usuario foreign key (usuarioId) references usuario(usuarioId)
)
