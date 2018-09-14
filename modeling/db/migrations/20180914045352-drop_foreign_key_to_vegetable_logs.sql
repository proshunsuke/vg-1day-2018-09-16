-- +migrate Up
ALTER TABLE vegetable_logs DROP FOREIGN KEY `vegetable_logs_ibfk_2`;

-- +migrate Down
-- vegetablesテーブルにはデータはあるが、vegetable_log_idはカラムを作成しただけで値は入っていない
-- よってこれは失敗する
ALTER TABLE vegetable_logs ADD FOREIGN KEY (vegetable_id) REFERENCES vegetables(id);
