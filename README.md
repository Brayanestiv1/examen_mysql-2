# examen_mysql-2

## Descripcion

la base de datos sakira es de una tienda de alquiler de peliculas la cual tiene 15 tablas, su funcion es ordenar y almacenar las peliculas disponibles ademas de la informacion de clientes, alquileres, categorias, empleados etc.


## Requisitos

necesitas la app dbeaver

## Instalacion

buscas Dbeaver y entras al primer enlace, buscas el boton que diga dowload y lo instalas

creas una nueva conexion en dbeaver, luego un archivo sql, y pegas los archivos sql que estan en el repositorio

## Desarrollo 

la base de datos no tenia el script de las tablas, solo el dml de los insert asi que lo primero que se realizaron fueron las tablas, por ejemplo: 

![alt text](image.png)

para crear la tabla de actor, se le puso un id, el cual se auto incremente cuando se agrege un nuevo actor, el nombre del actor con el valor varchar que es tipo cadena, y se limita la cantidad de datos en la cadena, lo mismo para el apellido, y se pone la fecha de la ultima actualizacion

de esa manera se crearon las 15 tablas.

el siguiente paso es insertarles los datos a las tablas, dado que ese script ya estaba era solo ejecutar el sql con los datos.


