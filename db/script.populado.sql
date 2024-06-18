insert into roles (codigo, rol) values ("ADMIN", "administrador");
insert into roles (codigo, rol) values ("USER", "usuario");

insert into usuario (nombre, email, password, activo, rolId) values ("Juan Suarez", "juansuarez@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1 ,1);
insert into usuario (nombre, email, password, activo, rolId) values ("Feldespar", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 1);
insert into usuario (nombre, email, password, activo, rolId) values ("Gascoigne", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);
insert into usuario (nombre, email, password, activo, rolId) values ("Edwin", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);
insert into usuario (nombre, email, password, activo, rolId) values ("Eustaquio", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);



insert into producto (tipoDeProducto, modelo , precio, foto, color, descripcion, stock, fotoDelete , fotoDisplay) values 
("Auriculares", "Logitech G-series G435 inalambrico", 138000 , "logitech.webp" ,"Blanco y lila", "Estos son unos auriculares gamer con los que podrás experimentar la adrenalina extrema que producen arduas horas de gaming", 4, "BORRAR LOGITECH", "DISPLAY LOGITECH");

insert into producto (tipoDeProducto, modelo , precio, foto, color, descripcion, stock, fotoDelete ,fotoDisplay) values 
("Auriculares", "Nisuta nSaug 305", 49000, "foto", "Verde y marron", "Los mejores auriculares del mercado, con estos podras sacar el maximo potencial de tus habilidades gamer", 12, "BORRAR NISUTA", "DISPLAY NISUTA")

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "Trust GXT 323W Carus", 27900, "FOTO", "Negro y azul", "Auriculares gaming con micrófono flexible y diadema ajustable para una comodidad prolongada durante tus sesiones de juego.", 18, "BORRAR TRUST", "DISPLAY TRUST");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "Turtle Beach Stealth 600 Gen 2", 79900, "FOTO", "Negro", "Auriculares inalámbricos para gaming con sonido envolvente, micrófono de alta sensibilidad y tecnología Superhuman Hearing para una experiencia auditiva mejorada.", 14, "BORRAR TURTLEBEACH", "DISPLAY TURTLEBEACH");

--------------------------------------


-- Producto 1 TECLADOS
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "Logitech G Pro X Mechanical", 89900, "FOTO", "Negro", "Teclado mecánico para gaming con switches GX Blue, diseñado para una velocidad y precisión excepcionales en cada pulsación.", 15, "BORRAR LOGITECH", "DISPLAY LOGITECH");

-- Producto 2
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "Corsair K95 RGB Platinum XT", 109900, "FOTO", "Negro", "Teclado mecánico con retroiluminación RGB, construcción de aluminio anodizado y teclas programables para una personalización total.", 10, "BORRAR CORSAIR", "DISPLAY CORSAIR");

-- Producto 3
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "Razer Huntsman Elite", 129900, "FOTO", "Negro", "Teclado mecánico con switches ópticos Razer, iluminación RGB Chroma y reposamuñecas ergonómico para horas de juego cómodo.", 8, "BORRAR RAZER", "DISPLAY RAZER");

-- Producto 4
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "SteelSeries Apex Pro", 134900, "FOTO", "Negro", "Teclado mecánico con switches ajustables OmniPoint para personalizar la sensibilidad de las teclas, construcción de aluminio y retroiluminación RGB.", 7, "BORRAR STEELSERIES", "DISPLAY STEELSERIES");

-- Producto 5
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "HyperX Alloy Origins", 99900, "FOTO", "Negro", "Teclado mecánico con switches HyperX Red, diseño compacto, construcción de aluminio y efectos de iluminación RGB personalizables.", 12, "BORRAR HYPERX", "DISPLAY HYPERX");

-- Producto 4
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "SteelSeries Apex Pro", 134900, "FOTO", "Negro", "Teclado mecánico con switches ajustables OmniPoint para personalizar la sensibilidad de las teclas, construcción de aluminio y retroiluminación RGB.", 7, "BORRAR STEELSERIES", "DISPLAY STEELSERIES");

-- Producto 5
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "HyperX Alloy Origins", 99900, "FOTO", "Negro", "Teclado mecánico con switches HyperX Red, diseño compacto, construcción de aluminio y efectos de iluminación RGB personalizables.", 12, "BORRAR HYPERX", "DISPLAY HYPERX");

-- Producto 6
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "Cooler Master MK850", 149900, "FOTO", "Negro", "Teclado mecánico con switches Cherry MX, tecnología Aimpad para control analógico, retroiluminación RGB y reposamuñecas magnético desmontable.", 5, "BORRAR COOLERMASTER", "DISPLAY COOLERMASTER");