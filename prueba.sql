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