-- +migrate Up
CREATE TABLE exchange_logs (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  point_value INT UNSIGNED NOT NULL,
  created_at  DATETIME     NOT NULL,
  exchange_id INT UNSIGNED NOT NULL,
  user_id     INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (exchange_id) REFERENCES exchanges (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

-- +migrate Down
DROP TABLE exchange_logs;
