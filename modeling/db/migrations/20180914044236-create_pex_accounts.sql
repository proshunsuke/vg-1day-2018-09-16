-- +migrate Up
CREATE TABLE pex_accounts (
  id             INT UNSIGNED NOT NULL AUTO_INCREMENT,
  account_number INT UNSIGNED NOT NULL UNIQUE KEY,
  user_id        INT UNSIGNED NOT NULL UNIQUE KEY,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

-- +migrate Down
DROP TABLE pex_accounts;
