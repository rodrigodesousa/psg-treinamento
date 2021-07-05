/*
select * from categoria;

select * from status;

select * from usuario;

select * from filmeSerie;

select * from pagamento;

select * from visualizacao;
*/

/*
/* Usuarios logados */
select count(*) as 'usuarios logados' from usuario where statusId = 1;
*/

/*
/* Usuarios assistindo */
select count(*) as 'usuarios assistindo' from usuario where statusId = 3;
*/

/*
/* Filmes mais vistss */
select f.nome, count(v.filmeSerieId) as 'visualizacoes' from  filmeSerie f 
left join visualizacao v on v.filmeSerieId = f.filmeSerieId group by f.nome order by visualizacoes desc;
*/

/*
/* Categorias mais vistas */
select c.nome, count(v.filmeSerieId) as 'visualizacoes' from  visualizacao v 
inner join filmeSerie f on v.filmeSerieId = f.filmeSerieId
inner join categoria c on c.categoriaId = f.categoriaId group by c.nome order by visualizacoes desc;
*/

/*
/* Usuarios com pagamento em dia */
select count(*) as 'Usuarios com pagamento em dia' from usuario where
usuarioId NOT in (select distinct p.usuarioId from pagamento p
where p.status = 0);
*/

/*
/* Usuarios com pagamento atrasado */
select count(distinct p.usuarioId) as 'Usuarios com pagamentos atrasados'  from pagamento p
where p.status = 0;
*/

/*
/* Usuarios cadastrados no mês */
select count(*) as 'Usuarios cadastrados no mês' from usuario
where dataCadastro >= '2021-01-01' AND dataCadastro <= '2021-01-31';
*/

/*
/* Contas canceladas no mês */
select count(*) as 'Contas canceladas no mês' from usuario
where statusConta = 0 AND dataAtualizacao >= '2021-07-01' AND dataAtualizacao <= '2021-07-31';
*/