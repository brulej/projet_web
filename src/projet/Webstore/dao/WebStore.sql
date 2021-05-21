

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




	
	
	
	







)
