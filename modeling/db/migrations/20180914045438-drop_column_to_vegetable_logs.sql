-- +migrate Up
ALTER TABLE vegetable_logs DROP COLUMN vegetable_id;

-- +migrate Down
ALTER TABLE vegetable_logs ADD COLUMN vegetable_id INT UNSIGNED NOT NULL;
