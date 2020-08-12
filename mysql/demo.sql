
#データベース作成
mysql> create database test;
#データベースを使用     
mysql> use test; 
#文字コード設定                
mysql> set names utf8;        

#テーブル作成
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


#データをインサート
INSERT INTO `user` VALUES (1,'Steve','gaussic2','Steve','NoJob'),(2,'Bill','111111','Bill','Gates'),(3,'Mark','22222','Mark','Zuckerberg'),(4,'gauss','11111111','Gaussic','D');



