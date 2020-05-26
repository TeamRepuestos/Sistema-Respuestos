create database if not exists Repuestos;
use Repuestos;

create table IF NOT EXISTS Carros(
IdCarros int primary key not null auto_increment,
MarcaId int,
Modelo varchar(50),
Año int,
NMotor varchar(50),
NChasis varchar(50),
TransmisionId int,
CombustibleId int,
Estado int
);
create table if not exists Marcas(
IdMarca int primary key not null auto_increment,
Marca varchar(50)
);

create table if not exists Transmisiones(
IdTransmision int primary key not null auto_increment,
Transmisione varchar(50)
);

create table if not exists Combustibles(
IdCombustible int primary key not null auto_increment,
combustible varchar(50)
);

create table if not exists Clientes(
IdCliente int primary key not null auto_increment,
Cliente varchar(50),
Telefono varchar(50),
Direccion varchar(50)
);

create table if not exists Usuarios(
IdUsuario int primary key not null auto_increment,
Usuario varchar(50),
Contraseña varchar(100),
clientId int
);

create table if not exists TipoProductos(
IdTipoProducto int primary key not null auto_increment,
TipoProducto varchar(50),
Estado int
);

create table if not exists Productos(
IdProducto int primary key not null auto_increment,
Producto varchar(50),
TipoProductoId int,
costo decimal (10,2),
margen decimal (10,2),
Precio decimal(10,2),
Imagen mediumblob,
estado int
);

Create table if not exists PreciosProducto(
IdPrecioProducto int primary key not null auto_increment,
ProductoId int,
nombre varchar(50),
cantidad int,
preciounitario decimal(10,2)
);

create table if not exists ProductosOfertas(
IdOferta int primary key not null auto_increment,
Oferta varchar(100),
precio decimal(10,2)
);

    ALTER TABLE Carros
ADD FOREIGN KEY (MarcaId) REFERENCES Marcas(IdMarca); 

   ALTER TABLE Carros
ADD FOREIGN KEY (TransmisionId) REFERENCES Transmisiones(IdTransmision); 

  ALTER TABLE Carros
ADD FOREIGN KEY (CombustibleId) REFERENCES Combustibles(IdCombustible); 

  ALTER TABLE Usuarios
ADD FOREIGN KEY (clientId) REFERENCES Clientes(IdCliente); 

 ALTER TABLE Productos
ADD FOREIGN KEY (TipoProductoId) REFERENCES TipoProductos(IdTipoProducto); 

ALTER TABLE PreciosProducto
ADD FOREIGN KEY (ProductoId) REFERENCES Productos(IdProducto);



