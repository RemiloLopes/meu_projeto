*/ Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes.
Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia.*/
CREATE TABLE cadastro(
	cpf varchar(15) PRIMARY KEY,
  	nome varchar(30) not null,
  	dia DATE not null
);
insert into cadastro VALUES ('55555555555', 'Fulaninho da Silva', '2023/04/27'), ('77755588789', 'Ciclaninho Ferreira', '2023/04/27'), 
('7759899985','Beutraninho Cruz','2022/07/25')

CREATE FUNCTION clientes_cadastrados (cadastro text, dia_escolhido date)
RETURNS TABLE (dia_cadastro date, total_clientes bigint) AS $$
BEGIN
  IF NOT EXISTS (SELECT * FROM information_schema.tables WHERE table_name = 'clientes_por_dia') THEN
    CREATE TABLE clientes_por_dia (dia_cadastro date, total_clientes bigint);
  END IF;
  IF NOT EXISTS(SELECT * FROM clientes_por_dia WHERE clientes_por_dia.dia_cadastro = dia_escolhido) THEN
  	INSERT INTO clientes_por_dia
  	SELECT cadastro.dia AS dia_cadastro, COUNT(DISTINCT cadastro.nome) AS total_clientes
  	FROM cadastro
  	WHERE cadastro.dia = dia_escolhido
  	GROUP BY cadastro.dia
  	ORDER BY cadastro.dia;
  END IF;
  RETURN QUERY SELECT * FROM clientes_por_dia;
END; $$ LANGUAGE plpgsql;

SELECT * FROM clientes_cadastrados('cadastro','2022/07/25')