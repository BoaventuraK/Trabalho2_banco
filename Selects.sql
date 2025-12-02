select 	* from Animal
where Periculosidade_idPericulosidade LIKE 2;

select * from Animal
order by (nome);

select Habitat_idHabitat, COUNT(*) as total
from Animal
group by Habitat_idHabitat
having COUNT(*) > 2;

select * from Animal
inner join Habitat on Habitat_idHabitat = idHabitat;

select Animal.nome, Especie.nome_popular, Genero.nome as genero
from Animal
inner join Especie on Especie.idEspecie = Animal.Especie_idEspecie
inner join Genero on Genero.idGenero = Especie.Genero_idGenero;

