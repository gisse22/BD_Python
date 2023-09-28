-- Crear la tabla Cliente
CREATE TABLE Cliente (
    ID INTEGER PRIMARY KEY,
    Nombre TEXT,
    Direccion TEXT,
    CorreoElectronico TEXT
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    ID INTEGER PRIMARY KEY,
    Nombre TEXT,
    Precio REAL,
    Descripcion TEXT,
    Categoria_ID INTEGER,
    Proveedor_ID INTEGER,
    FOREIGN KEY (Categoria_ID) REFERENCES Categoria(ID),
    FOREIGN KEY (Proveedor_ID) REFERENCES Proveedor(ID)
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    ID INTEGER PRIMARY KEY,
    FechaOrden DATE,
    Cliente_ID INTEGER,
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);

-- Crear la tabla Categoria
CREATE TABLE Categoria (
    ID INTEGER PRIMARY KEY,
    Nombre TEXT
);

-- Crear la tabla Proveedor
CREATE TABLE Proveedor (
    ID INTEGER PRIMARY KEY,
    Nombre TEXT,
    Direccion TEXT,
    CorreoElectronico TEXT
);

-- Crear la tabla Resena
CREATE TABLE Resena (
    ID INTEGER PRIMARY KEY,
    Cliente_ID INTEGER,
    Producto_ID INTEGER,
    Puntuacion INTEGER,
    Comentario TEXT,
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID),
    FOREIGN KEY (Producto_ID) REFERENCES Producto(ID)
);

-- Crear la tabla Stock con restricción unique
-- Crear la tabla Stock con restricción unique
CREATE TABLE Stock (
    Sucursal_ID INTEGER,
    Producto_ID INTEGER,
    Cantidad INTEGER,
    PRIMARY KEY (Sucursal_ID, Producto_ID),
    FOREIGN KEY (Sucursal_ID) REFERENCES Sucursal(ID),
    FOREIGN KEY (Producto_ID) REFERENCES Producto(ID),
    CONSTRAINT UQ_Sucursal_Producto UNIQUE (Sucursal_ID, Producto_ID)
);


-- Crear la tabla Sucursal
CREATE TABLE Sucursal (
    ID INTEGER PRIMARY KEY,
    Nombre TEXT,
    Direccion TEXT
);
