DROP DATABASE IF EXISTS WebStore; 
CREATE DATABASE WebStore;
USE WebStore;


CREATE TABLE T_Users ( 

	IdUser      int(4)   PRIMARY KEY Auto_INCREMENT,
	Login       varchar(20) NOT NULL, 
	Password   varchar(20) NOT NULL, 
	ConnectionNumber int(4) NOT NULL DEFAULT 0
	
) ENGINE = InnoDB;

INSERT INTO T_Users (IdUser, Login, Password) value (1, 'Anderson', 'Neo');
INSERT INTO T_Users (IdUser, Login, Password) value (2, 'Bond', 'James');

SELECT * FROM T_Users;


CREATE TABLE T_Articles (
   IdArticle    int(4)         PRIMARY KEY AUTO_INCREMENT,
   Description  varchar(20)         NOT NULL,
   Brand        varchar(20)         NOT NULL,
   UnitaryPrice float(12)          NOT NULL
   
) ENGINE = InnoDB;
 
INSERT INTO T_Articles (IdArticle, Description, Brand, UnitaryPrice) value (1,'Jean','styli','65');
INSERT INTO T_Articles (IdArticle, Description, Brand,  UnitaryPrice) value (2,'t shirt','styli', '30');

SELECT * FROM T_Articles;










	
	
	
	







