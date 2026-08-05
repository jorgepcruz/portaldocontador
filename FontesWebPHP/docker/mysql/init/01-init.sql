-- Bancos separados para cada copia do projeto + usuario de dev compartilhado.
CREATE DATABASE IF NOT EXISTS portal_lojadev  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS portal_servidor CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'portal'@'%' IDENTIFIED BY 'portal';
GRANT ALL PRIVILEGES ON portal_lojadev.*  TO 'portal'@'%';
GRANT ALL PRIVILEGES ON portal_servidor.* TO 'portal'@'%';
FLUSH PRIVILEGES;
