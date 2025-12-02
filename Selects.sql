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

select 
    Animal.nome AS Nome_Animal, 
    Especie.nome_popular As Especie,
    Genero.nome As Genero,
    Familia.nome AS Familia
from Animal
inner join Especie ON Animal.Especie_idEspecie = Especie.idEspecie
inner join Genero ON Especie.Genero_idGenero = Genero.idGenero
inner join Familia ON Genero.Familia_idFamilia = Familia.idFamilia;

select 
    Especie.nome_popular,
    COUNT(AtendimentoVeterinario.idAtendimentoVeterinario) AS total_atendimentos
from AtendimentoVeterinario
inner join Animal ON AtendimentoVeterinario.Animal_idAnimal = Animal.idAnimal
inner join Especie ON Animal.Especie_idEspecie = Especie.idEspecie
group by Especie.nome_popular
having total_atendimentos > 1;

select 
    Funcionario.nome AS Nome_Biologo,
    COUNT(VerificacaoRotina.idVerificacaoRotina) AS Qtd_Verificacoes
from VerificacaoRotina
inner join Biologo ON VerificacaoRotina.Biologo_Funcionario_idFuncionario = Biologo.Funcionario_idFuncionario
inner join Funcionario ON Biologo_Funcionario_idFuncionario = Funcionario.idFuncionario
group by Funcionario.nome;

select 
    Habitat.nome AS Nome_Habitat,
    COUNT(Animal.idAnimal) AS Qtd_Animais
from Animal
inner join Habitat ON Animal.Habitat_idHabitat = Habitat.idHabitat
where Habitat.tamanho_m2 > 100.00
group by Habitat.nome
having COUNT(Animal.idAnimal) >= 2;