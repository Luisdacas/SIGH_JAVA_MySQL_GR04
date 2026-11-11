-- =============================================================================
-- SIGHO - Permisos para el usuario de la aplicación MariaDB (sigh_login_app)
-- =============================================================================

-- 1. Asignar permisos completos de lectura y modificación sobre la base de datos correcta
GRANT SELECT, INSERT, UPDATE, DELETE
ON `sigh_gr04_login`.*
TO 'sigh_login_app'@'localhost';

-- 2. Asegurar permisos explícitos en las tablas de departamentos y cargos
GRANT SELECT, INSERT, UPDATE, DELETE
ON `sigh_gr04_login`.`PEDEP_DEPAR`
TO 'sigh_login_app'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE
ON `sigh_gr04_login`.`PECAR_CARGO`
TO 'sigh_login_app'@'localhost';

-- 3. Aplicar privilegios
FLUSH PRIVILEGES;

-- 4. Verificar permisos finales
SHOW GRANTS FOR 'sigh_login_app'@'localhost';
