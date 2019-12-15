-- 1. Encontre a soma de idade dos atores.

select sum(idade_atord) from ator_diretor;

-- 2. Encontre a média de idade dos atores.

select avg(idade_atord) from ator_diretor;

-- 3. Encontre a menor idade dos atores americanos.

select min(idade_atord) from ator_diretor where nac_atord = 'Americano';

-- 4. Encontre a média de idade e a nacionalidade dos atores.

select avg(idade_atord), nac_atord from ator_diretor group by nac_atord;

-- 5. Encontre a quantidade de atores e suas nacionalidades, agrupada pela
-- nacionalidade.

select count(nome_atord) as Ator, nac_atord as Nacionalidade from ator_diretor group by nac_atord;