-- Crear la base de datos "tienda_en_linea"
CREATE DATABASE tienda_en_linea;

-- Usar la base de datos
USE tienda_en_linea;

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255),
    CorreoElectronico VARCHAR(255)
);

-- Crear la tabla Categoria
CREATE TABLE Categoria (
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

-- Crear la tabla Proveedor
CREATE TABLE Proveedor (
    ID_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255),
    CorreoElectronico VARCHAR(255)
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Descripcion TEXT,
    Categoria_ID INT,
    Proveedor_ID INT,
    FOREIGN KEY (Categoria_ID) REFERENCES Categoria(ID_Categoria),
    FOREIGN KEY (Proveedor_ID) REFERENCES Proveedor(ID_Proveedor)
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    ID_Orden INT AUTO_INCREMENT PRIMARY KEY,
    FechaOrden DATE,
    Cliente_ID INT,
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID_Cliente)
);

-- Crear la tabla Resena
CREATE TABLE Resena (
    ID_Resena INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_ID INT,
    Producto_ID INT,
    Puntuacion INT,
    Comentario TEXT,
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (Producto_ID) REFERENCES Producto(ID_Producto)
);
