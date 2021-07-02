/*select * from clienteFornecedor*/

/*select * from fluxoCaixa*/

/*MOSTRAR HISTORICO DE SALDO*/
/*select fluxocaixaid, saldoAtual, datahora from fluxoCaixa order by fluxocaixaid desc;*/

/*CONFERENCIA DE SALDO*/
/*select sum(case when tipoTransacao = 'entrada' then valor else -valor end) as saldo from fluxoCaixa;*/

/*VENDAS DE UM PERIODO*/
/*select sum(valor) as 'vendas no periodo' from fluxoCaixa
where tipoTransacao = 'entrada' and
datahora > '20210701 23:59:00' and datahora < '20210702 23:59:00';*/

/*CLIENTES QUE COMPRAM MAIS*/
/*select cf.nome, sum(fc.valor) as valor from fluxoCaixa fc
inner join clienteFornecedor cf on fc.clientefornecedorid = cf.clientefornecedorid
where tipoTransacao = 'entrada' group by cf.nome, cf.clientefornecedorid;*/

/*MAIOR VENDA EM UM PERIODO*/
/*select max(valor) as 'maior valor' from fluxoCaixa
where tipoTransacao = 'entrada' and
datahora > '20210701 00:00:00' and datahora < '20210702 23:59:00';*/