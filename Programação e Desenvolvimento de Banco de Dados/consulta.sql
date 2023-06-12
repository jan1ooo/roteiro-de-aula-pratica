CREATE VIEW contas_nao_pagas AS 
	SELECT 
		cr.id_conta_receber, 
        c.nome AS cliente,
        c.cpf,
        cr.data_vencimento,
        cr.valor
	FROM conta_receber cr
		INNER JOIN cliente c ON c.id_cliente = cr.id_cliente
    WHERE cr.situacao = "Conta registrada";
    