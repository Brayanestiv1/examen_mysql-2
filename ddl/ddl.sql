use SAKILA;

create table if not exists actor (
	id_actor int auto_increment primary key,
	nombre varchar(45),
	apellido varchar(45),
	ultima_actualizacion timestamp
);


create table if not exists direccion (
	id_direccion int auto_increment primary key,
	direccion varchar (45),
	direccion2 varchar (45),
	distrito varchar(20),
	id_ciudad int,
	codigo_postal varchar(10),
	foreign key (id_ciudad) references ciudad (id_ciudad),
	telefono varchar(20),
	ultima_actualizacion timestamp
);

create table if not exists categoria (
	id_categoria int auto_increment primary key,
	nombre varchar(25),
	ultima_actualizacion timestamp
);


create table if not exists ciudad (
	id_ciudad int auto_increment primary key,
	nombre varchar (50),
	id_pais int,
	foreign key (id_pais) references pais (id_pais),
	ultima_actualizacion timestamp
);


create table if not exists pais (
	id_pais int auto_increment primary key,
	nombre varchar (50),
	ultima_actualizacion timestamp
);


create table if not exists cliente (
	id_cliente int auto_increment primary key,
	id_almacen int,
	foreign key (id_almacen) references almacen (id_almacen),
	nombre varchar(45),
	apellidos varchar(45),
	email varchar(50),
	id_direccion int,
	foreign key (id_direccion) references direccion (id_direccion),
	activo tinyint(1),
	fecha_creacion datetime,
	ultima_actualizacion timestamp
);


create table if not exists pelicula (
	id_pelicula int auto_increment primary key,
	titulo varchar(225),
	descripcion text,
	anyo_lanzamiento year,
	id_idioma int,
	id_idioma_original int,
	foreign key (id_idioma) references idioma (id_idioma),
	foreign key (id_idioma_original) references idioma (id_idioma),
	duracion_alquiler int,
	foreign key (duracion_alquiler) references alquiler (id_alquiler),
	rental_rate decimal(4,2),
	duracion smallint unsigned,
	replacement_cost decimal(4,2),
	clasificacion enum('G', 'PG', 'PG-13', 'R', 'NC-17'),
	caracteristicas_especiales set('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes'),
	ultima_actualizacion timestamp
);

create table if not exists pelicula_actor (
	id_actor int,
	id_pelicula int,
	ultima_actualizacion timestamp,
	primary key (id_actor, id_pelicula),
	foreign key (id_actor) references actor (id_actor),
	foreign key (id_pelicula) references pelicula (id_pelicula)
);


create table if not exists pelicula_categoria (
	id_pelicula int,
	id_categoria int,
	ultima_actualizacion timestamp,
	primary key (id_pelicula, id_categoria),
	foreign key (id_pelicula) references pelicula (id_pelicula),
	foreign key (id_categoria) references categoria (id_categoria)
);


create table if not exists inventario (
	id_inventario int auto_increment primary key,
	id_pelicula int,
	id_almacen int,
	ultima_actualizacion timestamp,
	foreign key (id_pelicula) references pelicula (id_pelicula),
	foreign key (id_almacen) references almacen (id_almacen)
);



create table if not exists idioma (
	id_idioma int auto_increment primary key,
	nombre varchar(20),
	ultima_actualizacion timestamp
);


create table if not exists pago (
	id_pago int auto_increment primary key,
	id_cliente int,
	id_empleado int,
	id_alquiler int,
	foreign key (id_cliente) references cliente (id_cliente),
	foreign key (id_empleado) references empleado (id_empleado),
	foreign key (id_alquiler) references alquiler (id_alquiler),
	total decimal(5,2),
	fecha_pago datetime,
	ultima_actualizacion timestamp
);



create table if not exists alquiler (
	id_alquiler int auto_increment primary key,
	fecha_alquiler datetime,
	id_inventario mediumint unsigned,
	id_cliente int,
	fecha_devolucion datetime,
	id_empleado int,
	foreign key (id_cliente) references cliente (id_cliente),
	foreign key (id_empleado) references empleado (id_empleado),
	ultima_actualizacion timestamp
);



create table if not exists empleado (
	id_empleado int auto_increment primary key,
	nombre varchar (45),
	apellidos varchar(45),
	id_direccion int,
	foreign key (id_direccion) references direccion (id_direccion),
	imagen blob,
	email varchar(50),
	id_almacen int,
	foreign key (id_almacen) references almacen (id_almacen),
	activo tinyint(1),
	username varchar(16),
	password varchar(40),
	ultima_actualizacion timestamp
);


create table if not exists almacen (
	id_almacen int auto_increment primary key,
	id_empleado_jefe tinyint unsigned,
	id_direccion int,
	foreign key (id_direccion) references direccion (id_direccion),
	ultima_actualizacion timestamp
);















