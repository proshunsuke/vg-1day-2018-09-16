-- +migrate Up
CREATE TABLE exchanges (
  id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE KEY,
  PRIMARY KEY (id)
);

-- +migrate Down
DROP TABLE exchanges;
