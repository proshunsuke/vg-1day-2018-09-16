-- +migrate Up
CREATE TABLE users (
  id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE KEY,
  PRIMARY KEY (id)
);

-- +migrate Down
DROP TABLE users;
