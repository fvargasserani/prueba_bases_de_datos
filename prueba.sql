CREATE DATABASE prueba

\c prueba

CREATE TABLE cliente(
    id_cliente SERIAL,
    nombre VARCHAR(100) NOT NULL,
    rut VARCHAR(12) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE factura(
    id_factura SERIAL,
    fecha DATE NOT NULL,
    id_cliente_factura INT,
    PRIMARY KEY (id_factura),
    FOREIGN KEY (id_cliente_factura) REFERENCES cliente (id_cliente)
);

CREATE TABLE categoria_producto(
    id_categoria SERIAL,
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion_categoria VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE producto(
    id_producto SERIAL,
    nombre_producto VARCHAR(100) NOT NULL,
    descripcion_producto VARCHAR(200) NOT NULL,
    valor_unitario INT NOT NULL,
    id_categoria_producto INT,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_categoria_producto) REFERENCES categoria_producto(id_categoria)
);

CREATE TABLE factura_producto(
    id_factura_producto SERIAL,
    id_factura INT, 
    id_producto INT,
    cantidad_producto SMALLINT,
    PRIMARY KEY (id_factura_producto),
    FOREIGN KEY (id_factura) REFERENCES factura (id_factura),
    FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);

INSERT INTO cliente(
    id_cliente,
    nombre,
    rut,
    direccion
) VALUES(
    1,
    'Roberto Jimenez',
    '22.456.355-K',
    'Av. Las Perdices 456, dpto 506, Penalolen'
);

INSERT INTO cliente(
    id_cliente,
    nombre,
    rut,
    direccion
) VALUES(
    2,
    'Carina Gonzalez',
    '16.356.494-9',
    'Huerfanos 756, oficina 41, Santiago Centro'
);

INSERT INTO cliente(
    id_cliente,
    nombre,
    rut,
    direccion
) VALUES(
    3,
    'Rosario Vargas',
    '7.829.390-2',
    'Holanda 4522, Providencia'
);

INSERT INTO cliente(
    id_cliente,
    nombre,
    rut,
    direccion
) VALUES(
    4,
    'Pablo Perez',
    '11.204.376-0',
    'Av. Loreto 332, Recoleta'
);

INSERT INTO cliente(
    id_cliente,
    nombre,
    rut,
    direccion
) VALUES(
    5,
    'Juan Ignacio Valdes',
    '9.228.394-8',
    'Principe de Gales 2282, La Reina'
);

INSERT INTO categoria_producto(
    id_categoria,
    nombre_categoria,
    descripcion_categoria
) VALUES(
    1,
    'cafe e infusines',
    'cafe de grano e infusiones de distintas hierbas organicas'
);

INSERT INTO categoria_producto(
    id_categoria,
    nombre_categoria,
    descripcion_categoria
) VALUES(
    2,
    'frutos secos',
    'frutos secos chilenos de exportacion'
);

INSERT INTO categoria_producto(
    id_categoria,
    nombre_categoria,
    descripcion_categoria
) VALUES(
    3,
    'semillas',
    'semillas de calidad de origen extranjero'
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    'Te Matcha 100 gr',
    'Te verde organico marca Manare',
    9990,
    1
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    2,
    'Cafe de grano 400 gr',
    'Cafe de grano molido marca Cafe Caribe',
    4990,
    1
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    3,
    'Mani sin sal 500 gr',
    'Mani pelado sin sal marca Powerfoods',
    3990,
    2
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    4,
    'Avellana europea 1 kg',
    'Avellana europea tostada marca Powerfoods',
    10990,
    2
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    5,
    'Almendras 1 kg',
    'Almendras variedad non pareil marca Powerfoods',
    9990,
    2
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    6,
    'Semillas de Chia 1 kg',
    'Semillas de chia marca Positiv',
    6990,
    3
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    7,
    'Semillas de linaza 1 kg',
    'Semillas de linaza dorada marca Positiv',
    3990,
    3
);

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    8,
    'Cafe de grano 10 capsulas',
    'Cafe de grano en capuslas compatibles con Nespresso marca Cafe Caribe',
    5990,
    1
);

