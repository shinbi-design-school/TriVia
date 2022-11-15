SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS quiz;




/* Create Tables */

CREATE TABLE quiz
(
	-- タスクID／主キー
	id int NOT NULL AUTO_INCREMENT COMMENT 'タスクID／主キー',
	-- 問題の内容
	content text NOT NULL COMMENT '問題の内容',
	-- 問題の答え
	answer int NOT NULL COMMENT '問題の答え',
	PRIMARY KEY (id)
);



