DROP SCHEMA IF EXISTS practica;
DROP USER IF EXISTS 'usuario_practica'@'%';
CREATE database practica;
CREATE USER 'usuario_practica'@'%' IDENTIFIED BY 'la_Clave';

GRANT ALL PRIVILEGES ON practica.* TO 'usuario_practica'@'%';
FLUSH PRIVILEGES;

USE practica;

CREATE TABLE arbol (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(30) NOT NULL,
  edad INT not null,
  Altura INT not null,
  ruta_imagen VARCHAR(1024) not null,
  activo BOOL,
  PRIMARY KEY (id_categoria)
);

INSERT INTO practica.arbol (nombre, descripcion, edad, Altura, ruta_imagen, activo) 
VALUES 
('Roble', 'Árbol de roble', 10, 15, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Illustration_Quercus_robur0.jpg/220px-Illustration_Quercus_robur0.jpg', true),
('Pino', 'Árbol de pino', 8, 12, 'https://www.aragon.es/documents/20127/94471716/Pino_Escobon_vertical.jpg/9b4e6fdc-a2f5-8806-12c4-63e4544e8a6f?t=1679390984542', true),
('Cedro', 'Árbol de cedro', 15, 18, 'https://www.ecured.cu/images/thumb/c/c8/Cedro.jpg/260px-Cedro.jpg', true),
('Fresno', 'Árbol de fresno', 12, 16, 'https://biblioteca.acropolis.org/wp-content/uploads/2015/11/Fraxinus_excelsior-226x301.jpg', true),
('Manzano', 'Árbol de manzano', 10, 14, 'https://arbolesmuyvivos.com/wp-content/uploads/2021/11/manzano-arbol.png', true),
('Olmo', 'Árbol de olmo', 9, 13, 'https://www.ecologistasenaccion.org/wp-content/uploads/2018/04/Olmo-Egidos-de-La-Feria-en-flor-Foto-Fernando-S%C3%A1nchez_preview-768x512.jpeg', true),
('Abedul', 'Árbol de abedul', 8, 11, 'https://paramijardin.s3.fr-par.scw.cloud/2017/07/DSCN0119-e1500914227410-450x600.jpg', true),
('Chopo', 'Árbol de chopo', 7, 10, 'https://www.fundacionaquae.org/wp-content/uploads/2017/03/sceaux-90942_1280-1024x768.jpg', true),
('Sauce', 'Árbol de sauce', 6, 9, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Saul_pleureur.jpg/250px-Saul_pleureur.jpg', true),
('Castaño', 'Árbol de castaño', 14, 17, 'https://cdn.portalfruticola.com/2023/02/media-works-II-2023-02-17T122715.345-1024x663.png', true);

