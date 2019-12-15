1. Listar todos os filmes que possuem o mesmo gênero que ‘Entre Nós’:

select tit_pt_filme, id_gen_filme from filme 
where id_gen_filme = (select id_gen_filme from genero where nome_genero = 'Ação');

2. Listar todos os atores que possuem a mesma idade que ‘Carolina Dieckmann’.

select nome_atord, idade_atord from ator_diretor
where idade_atord = (select idade_atord from ator_diretor where nome_atord = 'Jon Turteltaub');

3. Listar todos os atores que possuem a mesma nacionalidade que ‘Zac Efron’.

select nac_atord, nome_atord from ator_diretor
where nac_atord = (select nac_atord from ator_diretor where nome_atord = 'Jason Bateman');

4. Listar o nome do ator que trabalha no mesmo filme que ‘Russell Crowe’.

select nome_atord, elenco.id_atord from ator_diretor, elenco, filme 
where filme.id_filme = elenco.id_filme and elenco.id_atord = ator_diretor.id_atord and elenco.id_atord = (select ator_diretor.id_atord from ator_diretor , elenco, filme 
where filme.id_filme = elenco.id_filme and elenco.id_atord = ator_diretor.id_atord and nome_atord = 'Tom Hardy');