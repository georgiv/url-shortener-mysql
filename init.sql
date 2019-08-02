CREATE USER 'cranki'@'%'
  IDENTIFIED BY 'abcd1234';
GRANT ALL
  ON *.*
  TO 'cranki'@'%'
  WITH GRANT OPTION;

CREATE DATABASE url_shortener;

USE url_shortener;

CREATE TABLE url (
  id VARCHAR(6) NOT NULL,
  PRIMARY KEY(id),
  original_url VARCHAR(512) NOT NULL,
  CONSTRAINT uc_url UNIQUE(original_url),
  creation_time BIGINT UNSIGNED NOT NULL,
  expiration_time BIGINT UNSIGNED NOT NULL
);
