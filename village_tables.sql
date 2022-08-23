USE Village_bd;

CREATE TABLE morador(
	id INT AUTO_INCREMENT,
	nome VARCHAR(100),
    sexo CHAR(1) DEFAULT('F'),
    rg VARCHAR(11) NOT NULL UNIQUE KEY,
    cpf VARCHAR(15) NOT NULL UNIQUE KEY,
    tipo VARCHAR(20),
    idApartamento INT DEFAULT(NULL),
    idVeiculo INT DEFAULT(NULL),
    idSecretario INT DEFAULT(NULL),
    idCondominio INT DEFAULT(NULL),
    idVisita INT DEFAULT(NULL),
    idServico INT DEFAULT(NULL),
    idAluguel_espaco INT DEFAULT(NULL),
	CONSTRAINT FK_idApartamento FOREIGN KEY(idApartamento) REFERENCES apartamento(id),
    CONSTRAINT FK_idVeiculo FOREIGN KEY(idVeiculo) REFERENCES veiculo(id),
    CONSTRAINT FK_idSecretario FOREIGN KEY(idSecretario) REFERENCES secretario(id),
    FOREIGN KEY(idCondominio) REFERENCES condominio(id),
    CONSTRAINT FK_idVisita FOREIGN KEY(idVisita) REFERENCES visitante(id),
    CONSTRAINT FK_idServico FOREIGN KEY(idServico) REFERENCES servico(id),
    PRIMARY KEY(id)
);


/*sem chave estrangeira*/
CREATE TABLE visitante(
	id INT AUTO_INCREMENT,
    nomeVisita VARCHAR(100),
    rg VARCHAR(11) NOT NULL UNIQUE KEY,
    cpf VARCHAR(15) NOT NULL UNIQUE KEY,
    PRIMARY KEY(id)
);

/*sem chave estrangeira*/
CREATE TABLE veiculo(
	id INT AUTO_INCREMENT,
    modelo VARCHAR(45),
    placa VARCHAR(8),
    cor VARCHAR(30),
    PRIMARY KEY(id)
);

/*sem chave estrangeira*/
CREATE TABLE secretario(
	id INT AUTO_INCREMENT,
    nomeSecret VARCHAR(100),
    sexo CHAR(1) DEFAULT('F'),
    rg VARCHAR(11) NOT NULL UNIQUE KEY,
    cpf VARCHAR(15) NOT NULL UNIQUE KEY,
    observacao TEXT,
    PRIMARY KEY(id)
);

/*sem chave estrangeira*/
CREATE TABLE condominio(
	id INT AUTO_INCREMENT,
    nomeCond VARCHAR(100),
    cnpj VARCHAR(20) NOT NULL UNIQUE KEY,
    logradouro VARCHAR(100),
    numero int,
    PRIMARY KEY(id)
);


CREATE TABLE apartamento(
	id INT AUTO_INCREMENT,
    numero INT NOT NULL,
    andar INT NOT NULL,
    qtdQuarto INT NOT NULL,
    valor DECIMAL(9,2) NOT NULL,
    idCondominio INT,
    FOREIGN KEY(idCondominio) REFERENCES condominio(id),
    PRIMARY KEY(id)
);

CREATE TABLE funcionario(
	id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    sobrenome varchar(100),
    sexo CHAR(1) DEFAULT('F'),
    rg VARCHAR(11) NOT NULL UNIQUE KEY,
    cpf VARCHAR(15) NOT NULL UNIQUE KEY,
    idCargo INT,
    idCondominio INT,
    CONSTRAINT FK_idCargo FOREIGN KEY(idCargo) REFERENCES cargo(id),
    FOREIGN KEY(idCondominio) REFERENCES condominio(id),
    PRIMARY KEY(id)
);
select * from funcionario;


/*sem chave estrangeira*/
CREATE TABLE cargo(
	id INT AUTO_INCREMENT,
    data_admissao DATE NOT NULL,
    data_demissao DATE NOT NULL,
    funcao VARCHAR(60),
    salario DECIMAL(9,2),
    PRIMARY KEY(id)
);
CREATE TABLE servico(
	id INT AUTO_INCREMENT,
    nomeEmpresa VARCHAR(60),
    cnpj VARCHAR(20) NOT NULL UNIQUE KEY,
    descricao TEXT,
    idCondominio INT,
    CONSTRAINT FK_idCondominio FOREIGN KEY(idCondominio) REFERENCES condominio(id),
    PRIMARY KEY(id)
);

CREATE TABLE documento(
	id INT AUTO_INCREMENT,
    tipo VARCHAR(500),
    data_entrada DATE,
    data_emissao DATE,
    idCondominio INT,
    FOREIGN KEY(idCondominio) REFERENCES condominio(id),
    PRIMARY KEY(id)
);
 
CREATE TABLE aluguel_espaco(
	id INT AUTO_INCREMENT,
    descricao TEXT,
    valor DECIMAL(9,2),
    data_horaInicio DATETIME,
    data_horaTermino DATETIME,
    idCondominio INT,
    FOREIGN KEY(idCondominio) REFERENCES condominio(id),
    PRIMARY KEY(id)
);
