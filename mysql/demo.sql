
#�f�[�^�x�[�X�쐬
mysql> create database test;
#�f�[�^�x�[�X���g�p     
mysql> use test; 
#�����R�[�h�ݒ�                
mysql> set names utf8;        

#�e�[�u���쐬
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


#�f�[�^���C���T�[�g
INSERT INTO `user` VALUES (1,'Steve','gaussic2','Steve','NoJob'),(2,'Bill','111111','Bill','Gates'),(3,'Mark','22222','Mark','Zuckerberg'),(4,'gauss','11111111','Gaussic','D');



