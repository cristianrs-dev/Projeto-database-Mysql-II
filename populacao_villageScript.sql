USE village_bd;


select* from aluguel_espaco;
select* from apartamento;
select* from cargo;
select * from condominio;
select* from documento;
select* from funcionario;
select* from morador;
select* from secretaria;
select* from servico;
select* from veiculo;
select* from visitante;

INSERT INTO cargo(data_admissao, funcao, salario)
VALUES 			 ('2017-02-05', 'serviços gerais',			1500),
				 ('2017-02-05',	'serviços gerais',			1500),
				 ('2017-02-07',	'serviços gerais',			1500),
				 ('2017-02-08',	'manutencao',				1700),
				 ('2017-02-09',	'manutencao',				1700),
				 ('2016-02-02',	'supervisor',				1850),
				 ('2016-02-02',	'supervisor',				1850),
				 ('2015-01-05',	'Administrador',			2700),
				 ('2015-03-05', 'Auxiliar Administrativo',	2000);

select * from funcionario;
update funcionario set sobrenome='Quental Chainho' where id=9;
INSERT INTO funcionario(nome, sobrenome, sexo, rg, cpf, idCargo, idCondominio)
VALUES				('Milton','Úria Malafaia',	'M',	'359316372',	'12253626015',	8,	1),
					('Camila','Carvalhosa Assis',	'F',	'396695814',	'99428791024',	1,	1),
					('Amaro','Campelo Bivar',		'M',	'502309969',	'5168789056',	2,	1),
					('Ariel','Dorneles Fraga',	'M',	'493524307',	'1702413004',	9,	1),
					('Alexandra','Gorjão Penha',	'F',	'420641786',	'75353646088',	3,	1),
					('Emília','Pinto Marcondes',	'F',	'168626482',	'59268875004',	4,	1),
					('Léon','Gois Alvim',			'M',	'104017363',	'45175134086',	6,	1),
					('Henzo','Taveira Barrocas',	'M',	'109052882',	'53671573007',	7,	1),
					('Liedson','Quental Chainho',	'M',	'354547367',	'88902589005',	5,	1);
select* from secretario;
INSERT INTO secretario(nomeSecret, sexo, rg, cpf, observacao)
VALUES 				('Dulcicleide rosa pinho',	'F',	'240189371',	'70454882890',	'segunda e quarta'),
					('Maria das graças', 		'F',	'255679658',	'58338189235',	'segunda e quarta'),
					('Nazare oliveira rocha',	'F',	'275969940',	'84922526188',	'sabado e domingo'),
					('Patricia Silva',			'F',	'324157976',	'25715356504',	'sabado e domingo'),
					('Elena Oliveira', 			'F',	'336573169',	'14133146514',	'autorizada, não interfonar'),
					('Rosa da cruz',			'F',	'428007879',	'07088223392',	'autorizada, não interfonar'),
					('Rosiene Pinto Silva',		'F',	'146157679',	'80534173101',	'autorizada, não interfonar');


INSERT INTO condominio(nomeCond, cnpj, logradouro,numero)
VALUES  	('Village Parque','08029210000114', 'Rua Dom pedro', 815);

select* from aluguel_espaco;

INSERT INTO aluguel_espaco(descricao, valor, data_horaInicio, data_horaTermino, idCondominio)
VALUES			('Salao de festas',	1500,	'2010-04-25 18:00:00',	'2010-04-25 21:00:00',	1),
				('Piscina',			2000,	'2020-05-26 12:00:00',	'2020-05-26  15:00:00',	1),
				('Play Ground',		1000,	'2020-08-12 10:00:00',	'2020-08-12 12:00:00',	1);


select* from apartamento;
INSERT INTO apartamento(numero, andar, qtdQuarto, valor, idCondominio )
VALUES		(101,	1,	2,	1500,	1),
			(102,	2,	2,	1500,	1),
			(103,	3,	2,	1500,	1),
			(104,	4,	2,	1500,	1),
			(105,	5,	2,	1500,	1),
			(106,	6,	2,	1500,	1),
			(107,	7,	2,	1500,	1),
			(108,	8,	3,	2000,	1),
			(109,	9,	3,	2000,	1),
			(110,	10,	3,	2000,	1),
			(111,	11,	4,	3000,	1),
			(112,	12,	4,	3000,	1);
            
select* from visitante;

INSERT INTO visitante(nomeVisita, rg, cpf)
VALUES				('Ricardo mota filho',		'246147416',	'37860164450'),
					('Eduardo Cesar luz',		'137836557',	'31403178402'),
					('Gilberto Mestrinho',		'380047809',	'90712487808'),
					('Kathia Regina felix',		'48535116',		'28454782400'),
					('Marcus Dutra Campelo',	'483141744',	'76687412400');
                    
                    
select* from veiculo;
INSERT INTO veiculo(modelo , placa, cor)
VALUES		('Opala Comodoro',		'COH-5606',	'preta'),
			('Space Wagon GLS 2.0',	'IRG-0809',	'rocha'),
			('KICKS', 				'ABZ-6671',	'marrom'),
			('Space Wagon GLS 2.0',	'RDR-6403',	'prata'),
			('508 THP', 			'PXK-6104',	'PRETA'),
			('Fusion Titanium',		'FTY-5514',	'prata'),
			('VW - VolksWagen',		'AJN-1106',	'AZUL'),
			('XV 2.0',				'LPZ-1917',	'GRENA'),
			('145 Elegant 2.0',		'MQW-3508',	'FANTASIA');

select* from servico;
INSERT INTO servico(nomeEmpresa, cnpj, descricao, idCondominio)
VALUES			('RB Refrigeracao', '23687834000112', 'limpeza de ar-condicionado', 1),
				('Clean','36188255000177','higienizacao de sofa', 1),
                ('JK Modulados','72785520000168','montagem de moveis',1);

select* from documento;
INSERT INTO documento(tipo, data_emissao, idCondominio)
VALUES			('Recibo', '2020-03-04',1),
				('NF-e', '2020-05-03',1),
                ('Cadastro de Morador', '2018-05-02',1);
                
select* from morador;
INSERT INTO morador(nome, sexo, rg, cpf, tipo,idApartamento, idVeiculo, idSecretaria, idCondominio,idVisita, idServico, idAluguel_espaco)
Values		('Stefany Carolina Beatriz Almeida',	'F',	'110886768',	'56328202032',	'sindico',		1,	1,	1,	1,	1,	null,	null),
			('Diego Nelson Marcos Vinicius Moura',	'M',	'247580089',	'33645710078',	'proprietario',	2,	2,	2,	1,	2,	null,	null),
			('César Kevin da Cruz',					'M',	'125840913',	'8645984083',	'proprietario',	3,	null,	null,	1,	null,	null,	1),
			('Renata Isis Ferreira',				'F',	'130137005',	'38318184017',	'proprietario',	4,	3,	3,	1,	null,	1,	null),
			('Cauã Leonardo Sales',					'M',	'445213486',	'21275413080',	'inquillinno',	5,	4,	4,	1,	3,	null,	null),
			('Juan Bento Rafael Nogueira',			'M',	'116292787',	'71500140031',	'subsindico',	6,	5,	null,	1,	4,	null,	2),
			('Raimunda Daniela das Neves',			'F',	'211290853',	'17347050006',	'inquillinno',	7,	6,	5,	1,	null,	2,	null),
			('Flávia Débora Maria Vieira',			'F',	'356199848',	'70706660048',	'inquillinno',	8,	7,	6,	1,	5,	null,	null),
			('Manuel Manoel Geraldo Viana',			'M',	'253213927',	'83796924034',	'proprietario',	9,	8,	7,	1,	null,	null,	3),
			('Marcelo Osvaldo Pedro Carvalho',		'M',	'340566826',	'70159346045',	'proprietario',	10,	9,	null,	1,	null,	3,	null);
	
