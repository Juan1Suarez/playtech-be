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

CREATE TABLE producto (
  productoId int NOT NULL AUTO_INCREMENT,
  tipoDeProductoId int,
  tipoDeProducto varchar(30) DEFAULT NULL,
  modelo varchar(100) DEFAULT NULL,
  precio int NOT NULL,
  foto varchar(2000) DEFAULT NULL,
  color varchar(100) DEFAULT NULL,
  descripcion varchar(2000) DEFAULT NULL,
  stock int NOT NULL,
  fotoDelete varchar(1000),
  fotoDisplay varchar(1000),
  PRIMARY KEY (productoId),
  constraint FK_producto_tipoDeProducto FOREIGN key (tipoDeProductoId) references tipoDeProducto(tipoDeProductoId)
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

CREATE TABLE tipoDeProducto (
  tipoDeProductoId int NOT NULL AUTO_INCREMENT,
  grupo varchar(100),
  PRIMARY KEY (tipoDeProductoId)
  )
