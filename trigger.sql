CREATE TABLE cliente (
	cpf VARCHAR(15) PRIMARY KEY,
  	nome varchar (30) DEFAULT NULL,
  	email varchar (30) DEFAULT NULL,
  	senha varchar (30) not NULL,
  	aviso varchar(50) DEFAULT NULL
);


CREATE TRIGGER atualize_dados
AFTER INSERT 
ON cliente FOR EACH ROW 
BEGIN
	IF cliente.nome is NULL AND cliente.email is NULL THEN
    	INSERT INTO cliente(aviso)
        VALUes ('Olá ,' || cliente.nome || '. Há dados a serem atualizados.');
    END IF;
END;