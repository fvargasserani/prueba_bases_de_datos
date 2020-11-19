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

INSERT INTO producto(
    id_producto,
    nombre_producto,
    descripcion_producto,
    valor_unitario,
    id_categoria_producto
) VALUES(
    1
)
