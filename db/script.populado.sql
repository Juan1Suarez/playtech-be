insert into roles (codigo, rol) values ("ADMIN", "administrador");
insert into roles (codigo, rol) values ("USER", "usuario");

insert into usuario (nombre, email, password, activo, rolId) values ("Juan Suarez", "juansuarez@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1 ,1);
insert into usuario (nombre, email, password, activo, rolId) values ("Eustaquio", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);


insert into producto (tipoDeProducto, modelo , precio, foto, color, descripcion, stock, fotoDelete , fotoDisplay) values 
("Teclado", "Logitech G Pro X", 89900 , "https://i.ibb.co/b159rhC/6.jpg" ,"Negro", "Teclado mecánico para gaming con switches GX Blue, diseñado para una velocidad y precisión excepcionales en cada pulsación.", 12, "https://ibb.co/Y2Bst91/cdf229ef52bf550e508776073c716336", "https://i.ibb.co/G7QSVw8/6.jpg");

insert into producto (tipoDeProducto, modelo , precio, foto, color, descripcion, stock, fotoDelete , fotoDisplay) values 
("Auriculares", "G-series G435", 138000 , "https://i.ibb.co/VTGyhZs/7.jpg" ,"Blanco y lila", "Estos son unos auriculares gamer con los que podrás experimentar la adrenalina extrema que producen arduas horas de gaming.", 2, "https://ibb.co/njy2VvF/db0fbdee3eb2621e03a20f90d55fec59", "https://i.ibb.co/VTGyhZs/7.jpg");
