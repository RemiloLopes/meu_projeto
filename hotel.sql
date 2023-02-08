CREATE TABLE quartos (
	id SERIAL PRIMARY KEY,
  	categoria VARCHAR(10),
  	vista VARCHAR(6)
);
INSERT INTO quartos (categoria, vista) 
VALUES ('simples','mar'), ('duas camas', 'cidade'), ('casal', 'mar');
SELECT * from quartos;

CREATE TABLE cliente (
	RG VARCHAR(12) PRIMARY KEY,	
    full_name VARCHAR(50) not NULL,
  	telefone VARCHAR(12) NOT NULL
);
INSERT INTO cliente (RG,full_name,telefone)
VALUES ('00000000025', 'Roberto Campos', '11922222222'), ('2225558889', 'Maria Luísa', '54955534667'), ('5976854222', 'Marcelo Cruz da Silva', '91922335468');

SELECT * FROM cliente

create table aluguel (
	fk_rg_cliente VARCHAR(12),
  	fk_id_quartos INT,
  	CONSTRAINT quarto_cliente PRIMARY KEY (fk_rg_cliente, fk_id_quartos),
  	CONSTRAINT fk_rg FOREIGN KEY (fk_rg_cliente) REFERENCES cliente(RG),
  	CONSTRAINT fk_quarto FOREIGN KEY (fk_id_quartos) REFERENCES quartos(id),
  	data_entrada TIMESTAMP NOT NULL,
  	data_saida TIMESTAMP NOT NULL,
  	valor_total FLOAT NOT NULL,
  	meio_pagamento VARCHAR(20)
);

SELECT * FROM aluguel 