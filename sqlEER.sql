create database tienda;

create table estado (
id int auto_increment primary key,
descripcion varchar (100) not null,
fechaCreo TIMESTAMP DEFAULT current_timestamp 
);

create table tipoUsuario (
id int auto_increment primary key,
descripcion varchar(100) not null,
estadoid int not null,
fechacreo TIMESTAMP DEFAULT current_timestamp,
foreign key (estadoid) REFERENCES estado(id)
);

create table usuario (
id int auto_increment primary key,
nombrecompleto varchar(100) NOT NULL,
correo varchar(100) not null,
contraseña varchar(100) not null,
tipoUsuarioId INT not null,
fechacreo TIMESTAMP DEFAULT current_timestamp,
FOREIGN	 KEY  (tipoUsuarioId) REFERENCES tipousuario(id)
);

create table categoria (
id INT auto_increment PRIMARY KEY,
descripcion varchar(100) not null,
fechaCreo TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


create table producto(
id INT auto_increment primary key,
nombre varchar(100) not null,
descripcion VARCHAR(100) not null,
precio DECIMAL (10,2),
cantidad INT default 0,
categoriaId INT not null,
fechaCreo TIMESTAMP DEFAULT current_timestamp,
FOREIGN KEY (categoriaId) References categoria
);

create table ordenes (
id Int auto_increment primary key,
usuarioId INT not null,
estadoId int not null,
fechaCreo Timestamp default CURRENT_TIMESTAMP
);

create table detalleordenes (
id INT auto_increment primary key,
ordenId int not null,
productoId int not null,
cantidad int not null,
precio Decimal (10,2),
estadoId INT not null,
fechaCreo timestamp default current_timestamp
);