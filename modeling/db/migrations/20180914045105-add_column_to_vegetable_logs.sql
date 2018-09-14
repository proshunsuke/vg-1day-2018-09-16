-- +migrate Up
ALTER TABLE vegetable_logs ADD COLUMN vegetable_point_change_history_id INT UNSIGNED NOT NULL;

-- +migrate Down
ALTER TABLE vegetable_logs DROP COLUMN;
