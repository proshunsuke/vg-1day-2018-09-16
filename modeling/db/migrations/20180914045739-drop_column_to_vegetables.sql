-- +migrate Up
ALTER TABLE vegetables DROP COLUMN point_value;

-- +migrate Down
ALTER TABLE vegetables ADD COLUMN point_value INT UNSIGNED NOT NULL;
