-- +migrate Up
CREATE TABLE vegetables (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name        VARCHAR(255) NOT NULL UNIQUE KEY,
  point_value INT UNSIGNED NOT NULL,
  PRIMARY KEY (id)
);

-- +migrate Down
DROP TABLE vegetables;
