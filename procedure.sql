CREATE TABLE produto (
	id SERIAL PRIMARY KEY,
  	nome varchar(50) NOT NULL,
  	vendas INT NOT NULL,
  	dia DATE NOT NULL
);

INSERT INTO produto (nome, vendas, dia)
VALUES
('Produto A', 235, '2023/02/08'),('Produto A', 110, '2023/02/09'),('Produto B', 55, '2023/02/09'),('Produto B', 500, '2023/02/11');

CREATE PROCEDURE daily_check(produto)
BEGIN
	SELECT * FROM produto WHERE dia = CURRENT_DATE
END;
/*O procedure simplesmente não funciona, não entendo essa sintaxe, mas a query funciona:*/

SELECT * FROM produto WHERE dia = CURRENT_DATE