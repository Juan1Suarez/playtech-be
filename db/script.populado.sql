insert into roles (codigo, rol) values ("ADMIN", "administrador");
insert into roles (codigo, rol) values ("USER", "usuario");

insert into usuario (nombre, email, password, activo, rolId) values ("Juan Suarez", "juansuarez@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1 ,1);
insert into usuario (nombre, email, password, activo, rolId) values ("Feldespar", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 1);
insert into usuario (nombre, email, password, activo, rolId) values ("Gascoigne", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);
insert into usuario (nombre, email, password, activo, rolId) values ("Edwin", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);
insert into usuario (nombre, email, password, activo, rolId) values ("Eustaquio", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);



insert into producto (tipoDeProducto, modelo , precio, foto, color, descripcion, stock) values 
("Auriculares", "Logitech G-series G435 inalambrico", 138.000 , "ihfehioafwehoifawhipoawhiowafq3iho54io2a4h1" ,"Blanco y lila", "Estos son unos auriculares gamer con los que podrás experimentar la adrenalina extrema que producen arduas horas de gaming", 4);
