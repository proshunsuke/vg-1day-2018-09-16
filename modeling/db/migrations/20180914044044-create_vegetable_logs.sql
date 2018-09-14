-- +migrate Up
CREATE TABLE vegetable_logs (
  id             INT UNSIGNED NOT NULL AUTO_INCREMENT,
  point_get_date DATE         NOT NULL,
  user_id        INT UNSIGNED NOT NULL,
  vegetable_id  INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (point_get_date, user_id),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (vegetable_id) REFERENCES vegetables (id)
);

-- +migrate Down
DROP TABLE vegetable_logs;
