insert into roles (codigo, rol) values ("ADMIN", "administrador");
insert into roles (codigo, rol) values ("USER", "usuario");

insert into usuario (nombre, email, password, activo, rolId) values ("Juan Suarez", "juansuarez@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1 ,1);
insert into usuario (nombre, email, password, activo, rolId) values ("Eustaquio", "user@gmail.com", "$2a$08$W59jWcwio1TiLx4A8iRyTOg.rEhoc8wgr8cb9y2EtrzbtlYo35EYi", 1, 2);

/*TECLADOS*/
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay) 
VALUES 
('Teclado', 'SteelSeries Apex Pro', 134900, 'https://i.ibb.co/ydcPw7c/11.jpg', 'Negro', 'Teclado mecánico con switches ajustables OmniPoint para personalizar la sensibilidad de las teclas, construcción de aluminio y retroiluminación RGB.', 7, 'https://ibb.co/TYx2Vdx/a9c8abe4e9f5023d35e163e41a73664d', 'https://i.ibb.co/ydcPw7c/11.jpg'),
('Teclado', 'HyperX Alloy Origins', 99900, 'https://i.ibb.co/wLM7f7z/12.webp', 'Negro', 'Teclado mecánico con switches HyperX Red, diseño compacto, construcción de aluminio y efectos de iluminación RGB personalizables.', 12, 'https://ibb.co/YWpXxXL/c7899b87f875143229d8d966321c9256', 'https://i.ibb.co/wLM7f7z/12.webp'),
('Teclado', 'Cooler Master MK', 149900, 'https://i.ibb.co/5Yppxx9/13.jpg', 'Negro', 'Teclado mecánico con switches Cherry MX, tecnología Aimpad para control analógico, retroiluminación RGB y reposamuñecas magnético desmontable.', 5, 'https://ibb.co/DGccggb/24a2bbb53e2865b7518510a6f69eca68', 'https://i.ibb.co/5Yppxx9/13.jpg'),
('Teclado', 'Logitech G Pro X', 89900, 'https://i.ibb.co/b159rhC/6.jpg', 'Negro', 'Teclado mecánico para gaming con switches GX Blue, diseñado para una velocidad y precisión excepcionales en cada pulsación.', 12, 'https://ibb.co/Y2Bst91/cdf229ef52bf550e508776073c716336', 'https://i.ibb.co/G7QSVw8/6.jpg'), 
('Teclado', 'Corsair K95 Plat', 109900, 'https://i.ibb.co/2yPvMzP/9.jpg', 'Negro', 'Teclado mecánico con retroiluminación RGB, construcción de aluminio anodizado y teclas programables para una personalización total.', 10, 'https://ibb.co/zrbX23b/704a50837d38393b011b5607099c592e', 'https://i.ibb.co/2yPvMzP/9.jpg'),
('Teclado', 'Razer Huntsman', 129900, 'https://i.ibb.co/F0dPRmn/10.png', 'Negro', 'Teclado mecánico con switches ópticos Razer, iluminación RGB Chroma y reposamuñecas ergonómico para horas de juego cómodo.', 8, 'https://ibb.co/D8jq0zL/94629d23582986dbf563103a72b08b4e', 'https://i.ibb.co/F0dPRmn/10.png');

/*AURICULARES*/
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay) 
VALUES 
('Auriculares','Turtle Beach Stealth',79900,'https://i.ibb.co/GnVtHHb/15.jpg','Negro','Auriculares inalámbricos para gaming con sonido envolvente, micrófono de alta sensibilidad y tecnología Superhuman Hearing para una experiencia auditiva mejorada.',14,'https://ibb.co/n6DnPP5/1cb364c903ac73b76626e904e54cff1d','https://i.ibb.co/q7RWJJP/15.jpg'),
("Auriculares", "G-series G435", 138000 , "https://i.ibb.co/VTGyhZs/7.jpg" ,"Blanco y lila", "Estos son unos auriculares gamer con los que podrás experimentar la adrenalina extrema que producen arduas horas de gaming.", 2, "https://ibb.co/njy2VvF/db0fbdee3eb2621e03a20f90d55fec59", "https://i.ibb.co/VTGyhZs/7.jpg"),
('Auriculares','Nisuta nsaug 305',23400,'https://i.ibb.co/khKqFXn/7.webp','Azul y negro','Los auriculares Nisuta nSaug 305 ofrecen un diseño cómodo con calidad de sonido nítida y bajos potentes. Ideales para usuarios que buscan una experiencia auditiva envolvente y cómoda durante largos períodos de gaming',24,'https://ibb.co/gDytCJ1/c72e2ea778fb33475db5ac47ce5d1822','https://i.ibb.co/khKqFXn/7.webp'),
('Auriculares', 'HyperX Cloud II', 120000, 'https://i.ibb.co/hFksZZV/32.webp', 'Negro y rojo', 'Auriculares gaming con sonido envolvente 7.1 virtual, micrófono desmontable y almohadillas de espuma viscoelástica para una comodidad suprema. Perfectos para largas sesiones de juego gracias a su diadema ajustable y duradera.', 10, 'https://ibb.co/7tHvRRK/c9b531dccf5994317ff27646476822e5', 'https://i.ibb.co/GQX7ttR/32.webp'),
('Auriculares', 'Sony WH-1000XM4', 220000, 'https://i.ibb.co/17LXs02/33.jpg', 'Negro', 'Auriculares inalámbricos con cancelación de ruido líder en la industria, sonido de alta resolución y controles táctiles intuitivos. Disfruta de hasta 30 horas de reproducción continua y conectividad multipunto.', 8, 'https://ibb.co/mbGyvRz/03838ca28d5bc802c726bbd81d1084d7', 'https://i.ibb.co/17LXs02/33.jpg'),
('Auriculares', 'Bose QuietComfort', 250000, 'https://i.ibb.co/5Gv3x4d/34.webp', 'Plata', 'Auriculares inalámbricos con cancelación de ruido activa, compatibilidad con asistentes de voz y una experiencia de audio excepcional. La tecnología de cancelación de ruido se adapta automáticamente al entorno, proporcionando una escucha inigualable.', 5, 'https://ibb.co/pbZTrwg/964df8ccd13580b60beb84a2a1b5d66a', 'https://i.ibb.co/mbtKFTm/34.webp'); 


/*SILLAS GAMER*/

INSERT INTO producto ( tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay) VALUES 
('Silla Gamer', 'Secretlab Titan', 399900, 'https://i.ibb.co/W5qYQv5/27.jpg', 'Negro', 'Silla gamer con diseño ergonómico, materiales de alta calidad y múltiples opciones de ajuste para máxima comodidad y soporte.', 10, 'https://ibb.co/6wVf20w/ce18168abf09c23f4766b9bb20877fee', 'https://i.ibb.co/wg3xThg/27.jpg'),
('Silla Gamer', 'DXRacer Master', 349900, 'https://i.ibb.co/k1SqfnV/28.jpg', 'Rojo y Negro', 'Silla gamer con estructura de acero, cojines ajustables, y reposabrazos 4D para un soporte y confort excepcionales.', 15, 'https://ibb.co/VmqMZy0/a2e5e030fec228d5a6f16e0e40441588', 'https://i.ibb.co/2NkcQ20/28.jpg'),
('Silla Gamer', 'Razer Iskur', 379900, 'https://i.ibb.co/JQGtVrL/29.jpg', 'Negro y Verde', 'Silla gamer ergonómica con soporte lumbar ajustable y acolchado de alta densidad para sesiones de juego prolongadas.', 12, 'https://ibb.co/m82Tkhs/7b80b6e40c2b1ae14eb5876cc17628aa', 'https://i.ibb.co/ySZPtgT/29.jpg'),
('Silla Gamer', 'Corsair T3', 299900, 'https://i.ibb.co/mHJJszK/30.jpg', 'Gris', 'Silla gamer con diseño inspirado en autos de carrera, tapicería de tela transpirable y ajuste reclinable para mayor comodidad.', 20, 'https://ibb.co/y800TsC/a4c9037f4bd06f5115c4593fc5576360', 'https://i.ibb.co/xMhhv5b/30.jpg'),
('Silla Gamer', 'Primus Thronos', 240000, 'https://i.ibb.co/0Fhr2F2/60.webp', 'Negra y roja', 'La silla gamer Primus Thronos 200S combina ergonomía avanzada con un diseño robusto ideal para largas sesiones de juego. Equipada con soporte lumbar ajustable y reposabrazos ergonómicos, ofrece confort personalizable. Su estructura resistente y materiales de alta calidad aseguran durabilidad y estilo para cualquier espacio gaming.', 5, 'https://ibb.co/YyphQyQ/027854e613e69a9d4a5511db7251842b', 'https://i.ibb.co/BrqB3r3/60.webp'),
('Silla Gamer', 'Pro Lüsqtoff', 360000, 'https://i.ibb.co/RDsmbRq/61.png', 'Naranja y negro', 'Lüsqtoff Pro es una silla gamer diseñada para ofrecer comodidad y soporte durante largas sesiones de juego. Con un diseño ergonómico que incluye soporte lumbar ajustable y reposabrazos acolchados, proporciona una experiencia cómoda y ergonómica. Ideal para gamers que buscan un equilibrio entre estilo, confort y funcionalidad en sus sesiones de juego prolongadas.', 1, 'https://ibb.co/3Cjqdgn/7a6c35ebd3ea2a380ee2f47fccf5c8aa', 'https://i.ibb.co/BCQx309/61.png');

/*MOUSEPADS*/
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay) VALUES 
('Mousepad', 'SteelSeries QcK', 19900, 'https://i.ibb.co/VSPTD3p/22.webp', 'Negro', 'Mousepad de tela para gaming con superficie microtejida optimizada para un seguimiento preciso y base de goma antideslizante.', 50, 'https://ibb.co/0MdrZQV/82cf144356f2f4b2dff35fd124409abb', 'https://i.ibb.co/tsWDc3P/22.webp'),
('Mousepad', 'Razer Goliathus', 49900, 'https://i.ibb.co/BwHRLy8/23.webp', 'Negro', 'Mousepad de tela para gaming con iluminación RGB personalizable y superficie microtexturizada para un seguimiento óptimo.', 30, 'https://ibb.co/vDC8132/8fb83b87e5203fdf91b13e2c2752996b', 'https://i.ibb.co/kMVFK4Y/23.webp'),
('Mousepad', 'Corsair MM300', 29900, 'https://i.ibb.co/61JwqtY/24.jpg', 'Negro', 'Mousepad de tela para gaming con superficie textil tejida para un control preciso y base de goma antideslizante.', 40, 'https://ibb.co/gPF9cWy/4e3ac9001dfbf7865c111af4e566c27d', 'https://i.ibb.co/b2RmGv1/24.jpg'),
('Mousepad', 'Logitech G440', 34900, 'https://i.ibb.co/gjQQVkm/25.jpg', 'Negro', 'Mousepad rígido para gaming con superficie de polietileno de baja fricción, optimizado para sensores de alta precisión.', 25, 'https://ibb.co/X2668cj/9b4659a80a3cf7918206085e0ca0c1a9', 'https://i.ibb.co/HFRRd5B/25.jpg'),
('Mousepad', 'HyperX Fury S', 24900, 'https://i.ibb.co/qCZzF92/26.webp', 'Negro', 'Mousepad de tela para gaming con superficie de tela densamente tejida para un seguimiento preciso y bordes con costuras anti-desgaste.', 35, 'https://ibb.co/MfXb5pJ/74fdf0dfe02419a602750294e3b289cf', 'https://i.ibb.co/DYqNgkj/26.webp');

/*MOUSE*/
INSERT INTO producto (tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay) VALUES 
('Mouse', 'LogitechMX Master', 79900, 'https://i.ibb.co/WHw588W/17.jpg', 'Negro', 'Mouse inalámbrico avanzado con desplazamiento electromagnético, diseño ergonómico y control en múltiples dispositivos.', 30, 'https://ibb.co/K5kh44j/f7ec5f79e6dae03348b1696b4a22fa6f', 'https://i.ibb.co/105Qyyf/17.jpg'),
('Mouse', 'Razer DeathAdder', 49900, 'https://i.ibb.co/yPKZ0Wv/18.jpg', 'Negro', 'Mouse ergonómico para gaming con sensor óptico Focus+ de 20,000 DPI y switches ópticos Razer para un rendimiento ultrarrápido.', 25, 'https://ibb.co/KhBf6F4/3a5aa80ad067cc714b87d95b288c1558', 'https://i.ibb.co/dMXVBGC/18.jpg'),
('Mouse', 'SteelSeries Rival', 69900, 'https://i.ibb.co/WPZmHjH/19.webp', 'Negro', 'Mouse para gaming con sensor óptico dual TrueMove3+ de 12,000 CPI, sistema de pesas ajustable y diseño ergonómico.', 20, 'https://ibb.co/cC04yVy/2dcd060c92053bdfd3b27e9dbc55140e', 'https://i.ibb.co/5nmb1w1/19.webp'),
('Mouse', 'Corsair Dark Core', 89900, 'https://i.ibb.co/rbGwwBw/20.jpg', 'Negro', 'Mouse inalámbrico para gaming con sensor óptico de 18,000 DPI, iluminación RGB personalizable y carga inalámbrica Qi.', 15, 'https://ibb.co/6vRWWKW/ca213bf0e48139b2f476055b9c065046', 'https://i.ibb.co/M8DCCzC/20.jpg'),
('Mouse', 'Microsoft Surface', 69900, 'https://i.ibb.co/PmMjJjL/21.webp', 'Plata', 'Mouse ergonómico con conectividad Bluetooth y cable USB, diseñado para precisión y comodidad en trabajos prolongados.', 10, 'https://ibb.co/mD0TdTj/19f1474f53d8676afec004faa6b7cfd0', 'https://i.ibb.co/PmMjJjL/21.webp');



insert into tipodeproducto (grupo) values ("Auriculares"),
insert into tipodeproducto (grupo) values ("Teclado"),
insert into tipodeproducto (grupo) values ("Mousepad"),
insert into tipodeproducto (grupo) values ("Silla Gamer"),
insert into tipodeproducto (grupo) values ("Mouse");