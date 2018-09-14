-- +migrate Up
ALTER TABLE vegetable_point_change_histories ADD FOREIGN KEY (vegetable_id) REFERENCES vegetables(id);

-- +migrate Down
ALTER TABLE vegetable_point_change_histories DROP FOREIGN KEY `vegetable_point_change_histories_ibfk_1`;
