
use coletaigti;

create temporary table AXII
	select genero, 
			avg(timestampdiff(year, pessoas.data_nascimento, now())) as média_idade 
	from Pesquisa
		join pessoas
		on Pesquisa.cod_pessoa = Pessoas.cod_pessoa
		join hobbies
		on hobbies.cod_hobbie = Pesquisa.cod_hobbie
		and hobbie = "escrever"
		join animal_de_estimacao as aes
		on Pesquisa.cod_animal_estimacao = aes.cod_animal_estimacao
		and animal_estimacao = "tartaruga"
	group by genero;

select*from axii;

select * from AXII into outfile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\axii.csv" fields terminated by ';' lines terminated by '\n';
