INSERT INTO estado(nome, uf) VALUES 
	("São Paulo", "SP"),
	("Rio de Janeiro", "RJ"),
	("Ceará", "CE"),
	("Minas Gerais", "MG");

INSERT INTO municipio(id_estado, nome, cod_ibge) VALUES 
	(1, "São Paulo", 3550308),
	(1, "Guarulhos", 3518800),
	(2, "Niterói", 3303302),
	(3, "Bela Cruz", 2302305),
	(4, "Bicas", 3106903);

INSERT INTO cliente(nome, cpf, celular, end_logradouro, end_numero, end_municipio, end_cep, id_municipio) VALUES 
	("Roberto Marques de Sousa", "25153206009", "11911134256", "Rua Gino Bruno", "198", 1, "05617130", 1),
    ("Joana Maria Silva", "92616734060", "32910908020", "Rua Dona Ana", "23", 5, "36600970", 5),
    ("David Joaquim Pereira", "84990251024", "8823442568", "Rua Principal", "128", 4, "62570976", 4),
    ("Valdir Rubens Filho", "84990251024", "21980876754", "Ladeira do Castro", "92", 3, "24130678", 3);

INSERT INTO conta_receber(id_cliente, id_fatura_venda, data_conta, data_vencimento, valor, situacao) VALUES 
	(5, 1, "2023-03-01", "2023-03-30", 1999.90, "Conta paga"),
    (6, 2, "2023-04-20", "2023-05-10", 189.99, "Conta cancelada"),
    (7, 3, "2023-04-21", "2023-04-30", 2090.90, "Conta registrada"),
    (8, 4, "2023-04-21", "2023-04-25", 4990.90, "Conta registrada"),
    (8, 5, "2023-05-21", "2023-06-01", 2300.99, "Conta paga");
