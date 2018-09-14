-- +migrate Up
ALTER TABLE vegetable_logs ADD FOREIGN KEY (vegetable_point_change_history_id) REFERENCES vegetable_point_change_histories(id);

-- +migrate Down
ALTER TABLE vegetable_logs DROP FOREIGN KEY `vegetable_logs_ibfk_2`;
