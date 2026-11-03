-- =====================================================================
-- V4: datos de ejemplo del catalogo y clientes (proyecto integrador).
-- Autor: Joan Rodriguez. Permite probar la app movil sin cargar datos a mano.
-- =====================================================================
insert into categorias (nombre, descripcion, estado, fecha_creacion) values ('Analgesicos', 'Alivio del dolor y la fiebre', true, systimestamp);
insert into categorias (nombre, descripcion, estado, fecha_creacion) values ('Antibioticos', 'Venta con receta medica', true, systimestamp);
insert into categorias (nombre, descripcion, estado, fecha_creacion) values ('Vitaminas', 'Suplementos y multivitaminicos', true, systimestamp);
insert into categorias (nombre, descripcion, estado, fecha_creacion) values ('Cuidado personal', 'Higiene y dermocosmetica', true, systimestamp);

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Paracetamol 500 mg x 100', 12.50, 80, true, id, systimestamp from categorias where nombre = 'Analgesicos';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Ibuprofeno 400 mg x 50', 15.90, 6, true, id, systimestamp from categorias where nombre = 'Analgesicos';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Naproxeno 550 mg x 20', 18.00, 40, true, id, systimestamp from categorias where nombre = 'Analgesicos';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Amoxicilina 500 mg x 21', 24.00, 30, true, id, systimestamp from categorias where nombre = 'Antibioticos';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Azitromicina 500 mg x 3', 21.50, 4, true, id, systimestamp from categorias where nombre = 'Antibioticos';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Vitamina C 1 g x 30', 19.90, 55, true, id, systimestamp from categorias where nombre = 'Vitaminas';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Complejo B x 60', 22.00, 25, true, id, systimestamp from categorias where nombre = 'Vitaminas';
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Protector solar FPS 50', 45.00, 12, true, id, systimestamp from categorias where nombre = 'Cuidado personal';

insert into clientes (dni, nombres, apellidos, email, telefono, direccion, estado, fecha_creacion)
values ('45678912', 'Ana', 'Lopez Garcia', 'ana.lopez@correo.pe', '987654001', 'Av. Los Andes 123', true, systimestamp);
insert into clientes (dni, nombres, apellidos, email, telefono, direccion, estado, fecha_creacion)
values ('46789123', 'Miguel', 'Torres Rojas', 'miguel.torres@correo.pe', '987654002', null, true, systimestamp);
