set names utf8;
set foreign_key_checks=0;

drop database if exists bookshare;
create database if not exists bookshare;

use bookshare;

create table user_info(
id int primary key not null auto_increment comment "ID",
user_name varchar(32)  not null comment "名前",
user_password varchar(16) not null comment "パスワード",
email varchar(32) not null comment "メールアドレス",

status tinyint not null default 0 comment "ステータス",
loginFlg tinyint not null default 0 comment "ログインフラグ",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)
default charset=utf8
comment="会員情報テーブル"
;

create table post(
id int primary key not null auto_increment comment "ID",
title varchar(32) not null comment "タイトル",
introduction varchar(255) not null comment "投稿内容",
user_name varchar(32) not null comment "名前（投稿者）",


regist_date datetime not null comment "投稿日",
update_date datetime not null comment "更新日"
)
default charset=utf8
comment="投稿テーブル"
;




