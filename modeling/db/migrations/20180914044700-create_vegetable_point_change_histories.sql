-- +migrate Up
CREATE TABLE vegetable_point_change_histories (
  id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
  vegetable_id INT UNSIGNED NOT NULL,
  point_value  INT UNSIGNED NOT NULL,
  start_at     DATETIME     NOT NULL,
  PRIMARY KEY (id)
);

-- +migrate Down
DROP TABLE vegetable_point_change_histories;
