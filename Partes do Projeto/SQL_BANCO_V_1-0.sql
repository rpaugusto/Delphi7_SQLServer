CREATE TABLE cliente (
	cli_id			INT IDENTITY,
	cli_nome		VARCHAR(100) NOT NULL, -- OBRIGATORIO
	cli_endereco	VARCHAR(100),
	cli_bairro		VARCHAR(50),
	cli_cidade		VARCHAR(50),
	cli_estado		VARCHAR(2),
	cli_cep			VARCHAR(10),
	cli_telefone	VARCHAR(13) NOT NULL, -- OBRIGATORIO
	cli_celular		VARCHAR(14),
	cli_cpf			VARCHAR(14) UNIQUE NOT NULL, -- OBRIGATORIO
	cli_rg			VARCHAR(10),
	cli_email		VARCHAR(100),
	CONSTRAINT pk_cli_id PRIMARY KEY (cli_id)
);

CREATE TABLE produto (
	pro_id			INT IDENTITY,
	pro_descricao	VARCHAR(100) NOT NULL, -- OBRIGATORIO
	pro_barra		VARCHAR(13), -- EAN13
	pro_custo		MONEY, -- DECIMAL(10,2)
	pro_margem		INT,
	pro_venda		MONEY, -- DECIMAL(10,2)
	pro_desconto	INT,
	pro_estoque		INT, -- IRÁ VARIAR DEACORDO COM AS SAIDAS E ENTRADAS
	CONSTRAINT pk_p_id PRIMARY KEY (pro_id),
);

CREATE TABLE pedido (
	ped_id		INT NOT NULL,
	ped_cliente INT NOT NULL, -- COD. CLIENTYE
	ped_data	DATETIME NOT NULL, -- DATA DE CRIAÇÃO DO PEDIDO
	ped_valor	MONEY,  -- DECIMAL(10,2)
	CONSTRAINT pk_ped_id PRIMARY KEY (ped_id),
	CONSTRAINT fk_cli_id FOREIGN KEY (ped_cliente) REFERENCES cliente (cli_id) ON DELETE CASCADE
);

CREATE TABLE item (
	it_indice	INT NOT NULL, -- CONFORME INCLUIDO NO PEDIDO 
	it_pedido	INT NOT NULL, -- COD. PEDIDO
	it_produto	INT NOT NULL, -- COD. PRODUTO
	it_valor	MONEY NOT NULL, -- DECIMAL(10,2)
	it_qtd		INT NOT NULL,
	CONSTRAINT pk_it_ped_pro PRIMARY KEY (it_pedido, it_produto),
	CONSTRAINT fk_ped_id FOREIGN KEY (it_pedido) REFERENCES pedido (ped_id) ON DELETE CASCADE,
	CONSTRAINT fk_ped_pro FOREIGN KEY (it_produto) REFERENCES produto (pro_id) ON DELETE CASCADE
);
