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

-- Producto 4 (Auriculares Trust)
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "Trust GXT 323W Carus", 27900, "FOTO", "Negro y azul", "Auriculares gaming con micrófono flexible y diadema ajustable para una comodidad prolongada durante tus sesiones de juego.", 18, "BORRAR TRUST", "DISPLAY TRUST");

-- Producto 5 (Auriculares Turtle Beach)
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "Turtle Beach Stealth 600 Gen 2", 79900, "FOTO", "Negro", "Auriculares inalámbricos para gaming con sonido envolvente, micrófono de alta sensibilidad y tecnología Superhuman Hearing para una experiencia auditiva mejorada.", 14, "BORRAR TURTLEBEACH", "DISPLAY TURTLEBEACH");


INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "HyperX Cloud II", 120000, "hyperx_cloud_ii.webp", "Negro y rojo", "Auriculares gaming con sonido envolvente 7.1 virtual, micrófono desmontable y almohadillas de espuma viscoelástica para una comodidad suprema. Perfectos para largas sesiones de juego gracias a su diadema ajustable y duradera.", 10, "BORRAR HYPERX", "DISPLAY HYPERX");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "Sony WH-1000XM4", 220000, "sony_wh1000xm4.webp", "Negro", "Auriculares inalámbricos con cancelación de ruido líder en la industria, sonido de alta resolución y controles táctiles intuitivos. Disfruta de hasta 30 horas de reproducción continua y conectividad multipunto.", 8, "BORRAR SONY", "DISPLAY SONY");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Auriculares", "Bose QuietComfort 35 II", 250000, "bose_qc35ii.webp", "Plata", "Auriculares inalámbricos con cancelación de ruido activa, compatibilidad con asistentes de voz y una experiencia de audio excepcional. La tecnología de cancelación de ruido se adapta automáticamente al entorno, proporcionando una escucha inigualable.", 5, "BORRAR BOSE", "DISPLAY BOSE");
-----------------------------

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
-- Producto 7
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Teclado", "Razer BlackWidow V3", 99900, "FOTO_RAZER", "Negro", "Teclado mecánico para gaming con switches Razer Green, diseñado para una durabilidad y respuesta táctil óptimas.", 20, "BORRAR RAZER", "DISPLAY RAZER");

------------------ MOUSE
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mouse", "Logitech MX Master 3", 79900, "FOTO_LOGITECH_MX", "Negro", "Mouse inalámbrico avanzado con desplazamiento electromagnético, diseño ergonómico y control en múltiples dispositivos.", 30, "BORRAR LOGITECH MX", "DISPLAY LOGITECH MX");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mouse", "Razer DeathAdder V2", 49900, "FOTO_RAZER_DEATHADDER", "Negro", "Mouse ergonómico para gaming con sensor óptico Focus+ de 20,000 DPI y switches ópticos Razer para un rendimiento ultrarrápido.", 25, "BORRAR RAZER DEATHADDER", "DISPLAY RAZER DEATHADDER");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mouse", "SteelSeries Rival 600", 69900, "FOTO_STEELSERIES_RIVAL", "Negro", "Mouse para gaming con sensor óptico dual TrueMove3+ de 12,000 CPI, sistema de pesas ajustable y diseño ergonómico.", 20, "BORRAR STEELSERIES RIVAL", "DISPLAY STEELSERIES RIVAL");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mouse", "Corsair Dark Core RGB/SE", 89900, "FOTO_CORSAIR_DARK_CORE", "Negro", "Mouse inalámbrico para gaming con sensor óptico de 18,000 DPI, iluminación RGB personalizable y carga inalámbrica Qi.", 15, "BORRAR CORSAIR DARK CORE", "DISPLAY CORSAIR DARK CORE");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mouse", "Microsoft Surface Precision Mouse", 69900, "FOTO_MICROSOFT_SURFACE", "Plata", "Mouse ergonómico con conectividad Bluetooth y cable USB, diseñado para precisión y comodidad en trabajos prolongados.", 10, "BORRAR MICROSOFT SURFACE", "DISPLAY MICROSOFT SURFACE");
-------------------------mousepads

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mousepad", "SteelSeries QcK", 19900, "FOTO_STEELSERIES_QCK", "Negro", "Mousepad de tela para gaming con superficie microtejida optimizada para un seguimiento preciso y base de goma antideslizante.", 50, "BORRAR STEELSERIES QCK", "DISPLAY STEELSERIES QCK");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mousepad", "Razer Goliathus Extended Chroma", 49900, "FOTO_RAZER_GOLIATHUS", "Negro", "Mousepad de tela para gaming con iluminación RGB personalizable y superficie microtexturizada para un seguimiento óptimo.", 30, "BORRAR RAZER GOLIATHUS", "DISPLAY RAZER GOLIATHUS");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mousepad", "Corsair MM300 Extended", 29900, "FOTO_CORSAIR_MM300", "Negro", "Mousepad de tela para gaming con superficie textil tejida para un control preciso y base de goma antideslizante.", 40, "BORRAR CORSAIR MM300", "DISPLAY CORSAIR MM300");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mousepad", "Logitech G440", 34900, "FOTO_LOGITECH_G440", "Negro", "Mousepad rígido para gaming con superficie de polietileno de baja fricción, optimizado para sensores de alta precisión.", 25, "BORRAR LOGITECH G440", "DISPLAY LOGITECH G440");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Mousepad", "HyperX Fury S Pro", 24900, "FOTO_HYPERX_FURY", "Negro", "Mousepad de tela para gaming con superficie de tela densamente tejida para un seguimiento preciso y bordes con costuras anti-desgaste.", 35, "BORRAR HYPERX FURY", "DISPLAY HYPERX FURY");
-----------------------------sillasgamer

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Silla Gamer", "Secretlab Titan Evo 2022", 399900, "FOTO_SECRETLAB_TITAN", "Negro", "Silla gamer con diseño ergonómico, materiales de alta calidad y múltiples opciones de ajuste para máxima comodidad y soporte.", 10, "BORRAR SECRETLAB TITAN", "DISPLAY SECRETLAB TITAN");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Silla Gamer", "DXRacer Master Series", 349900, "FOTO_DXRACER_MASTER", "Rojo y Negro", "Silla gamer con estructura de acero, cojines ajustables, y reposabrazos 4D para un soporte y confort excepcionales.", 15, "BORRAR DXRACER MASTER", "DISPLAY DXRACER MASTER");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Silla Gamer", "Razer Iskur", 379900, "FOTO_RAZER_ISKUR", "Negro y Verde", "Silla gamer ergonómica con soporte lumbar ajustable y acolchado de alta densidad para sesiones de juego prolongadas.", 12, "BORRAR RAZER ISKUR", "DISPLAY RAZER ISKUR");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Silla Gamer", "Corsair T3 Rush", 299900, "FOTO_CORSAIR_T3", "Gris", "Silla gamer con diseño inspirado en autos de carrera, tapicería de tela transpirable y ajuste reclinable para mayor comodidad.", 20, "BORRAR CORSAIR T3", "DISPLAY CORSAIR T3");

INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay)
VALUES ("Silla Gamer", "Noblechairs Hero", 429900, "FOTO_NOBLECHAIRS_HERO", "Negro", "Silla gamer con diseño ergonómico, cuero PU de alta calidad, y soporte lumbar integrado para un confort superior.", 8, "BORRAR NOBLECHAIRS HERO", "DISPLAY NOBLECHAIRS HERO");