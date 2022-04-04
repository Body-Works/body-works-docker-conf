# create databases
CREATE DATABASE IF NOT EXISTS `body_works`;
CREATE DATABASE IF NOT EXISTS `fit_system`;
CREATE DATABASE IF NOT EXISTS `kids_fitness`;
CREATE DATABASE IF NOT EXISTS `body_worksout`;

# create root user and grant rights
CREATE USER 'root'@'localhost' IDENTIFIED BY 'toor';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';