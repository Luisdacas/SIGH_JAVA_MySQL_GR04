-- =============================================================================
-- SIGH - Esquema MariaDB para el proyecto Java (JSF / Payara)
-- Ejecutar en phpMyAdmin (pestaña SQL) o HeidiSQL conectado como root.
-- =============================================================================
CREATE DATABASE IF NOT EXISTS `sigh_gr04_login`
  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sigh_gr04_login`;

CREATE TABLE IF NOT EXISTS PEDEP_DEPAR (
    PEDEP_CODIGO CHAR(3)     NOT NULL,
    PEDEP_DESCRI VARCHAR(50) NOT NULL,
    PRIMARY KEY (PEDEP_CODIGO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS PECAR_CARGO (
    PECAR_CODIGO CHAR(3)     NOT NULL,
    PEDEP_CODIGO CHAR(3)     NOT NULL,
    PECAR_DESCRI VARCHAR(50) NOT NULL,
    PRIMARY KEY (PECAR_CODIGO),
    CONSTRAINT FK_PECAR_PEDEP FOREIGN KEY (PEDEP_CODIGO)
        REFERENCES PEDEP_DEPAR (PEDEP_CODIGO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS XEUSU_USUAR (
    XEUSU_CODIGO VARCHAR(20)  NOT NULL,
    PEPER_CODIGO VARCHAR(10)  NULL,
    XEEST_CODIGO CHAR(1)      NOT NULL,
    XEUSU_PASWD  VARCHAR(255) NOT NULL,   -- formato pbkdf2_sha256$iter$sal$hash
    XEUSU_INTFAL INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (XEUSU_CODIGO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Usuario de prueba:  ADMIN  /  Admin123*   (cámbielo o bórrelo después)
INSERT IGNORE INTO XEUSU_USUAR (XEUSU_CODIGO, PEPER_CODIGO, XEEST_CODIGO, XEUSU_PASWD, XEUSU_INTFAL)
VALUES ('ADMIN', NULL, 'A',
        'pbkdf2_sha256$600000$oae98u+PXnnTTa9uUJReRQ==$sRxqrGfCwk135cb7B/Z7If2K0vFHUNEM7EXgUMd+Hys=',
        0);

INSERT IGNORE INTO PEDEP_DEPAR (PEDEP_CODIGO, PEDEP_DESCRI) VALUES
    ('D01', 'Administración'),
    ('D02', 'Radiología'),
    ('D03', 'Emergencias');

-- =============================================================================
-- Usuario de la aplicación (CAMBIE la contraseña y use la misma en Payara)
-- =============================================================================
CREATE USER IF NOT EXISTS 'sigh_login_app'@'localhost' IDENTIFIED BY 'CambiarEsta_Clave_123!';

GRANT SELECT, INSERT, UPDATE, DELETE ON `sigh_gr04_login`.* TO 'sigh_login_app'@'localhost';
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'sigh_login_app'@'localhost';
