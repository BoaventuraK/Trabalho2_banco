-- Cleaned schema for zoologico

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `zoologico`;
USE `zoologico`;

-- Estados
CREATE TABLE IF NOT EXISTS `Estado` (
  `idEstado` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB;

-- Cidade
CREATE TABLE IF NOT EXISTS `Cidade` (
  `idCidade` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Estado_idEstado` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCidade`),
  INDEX `fk_Cidade_Estado_idx` (`Estado_idEstado`)
) ENGINE=InnoDB;

ALTER TABLE `Cidade`
  ADD CONSTRAINT `fk_Cidade_Estado`
    FOREIGN KEY (`Estado_idEstado`)
    REFERENCES `Estado` (`idEstado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Bairro (cada bairro pertence a uma cidade)
CREATE TABLE IF NOT EXISTS `Bairro` (
  `idBairro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Cidade_idCidade` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idBairro`),
  INDEX `fk_Bairro_Cidade_idx` (`Cidade_idCidade`)
) ENGINE=InnoDB;

ALTER TABLE `Bairro`
  ADD CONSTRAINT `fk_Bairro_Cidade`
    FOREIGN KEY (`Cidade_idCidade`)
    REFERENCES `Cidade` (`idCidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Funcionários
CREATE TABLE IF NOT EXISTS `Funcionario` (
  `idFuncionario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `tel` VARCHAR(15) NOT NULL,
  `cep` VARCHAR(8) NOT NULL,
  `endereco` VARCHAR(120) NOT NULL,
  `Bairro_idBairro` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf`),
  INDEX `fk_Funcionario_Bairro_idx` (`Bairro_idBairro`)
) ENGINE=InnoDB;

ALTER TABLE `Funcionario`
  ADD CONSTRAINT `fk_Funcionario_Bairro`
    FOREIGN KEY (`Bairro_idBairro`)
    REFERENCES `Bairro` (`idBairro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Biologo (herda de Funcionario)
CREATE TABLE IF NOT EXISTS `Biologo` (
  `Funcionario_idFuncionario` INT UNSIGNED NOT NULL,
  `crbio` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Funcionario_idFuncionario`),
  UNIQUE INDEX `crbio_UNIQUE` (`crbio`),
  INDEX `fk_Biologo_Funcionario_idx` (`Funcionario_idFuncionario`)
) ENGINE=InnoDB;

ALTER TABLE `Biologo`
  ADD CONSTRAINT `fk_Biologo_Funcionario`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- MedVeterinario (herda de Funcionario)
CREATE TABLE IF NOT EXISTS `MedVeterinario` (
  `Funcionario_idFuncionario` INT UNSIGNED NOT NULL,
  `crmv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Funcionario_idFuncionario`),
  UNIQUE INDEX `crmv_UNIQUE` (`crmv`),
  INDEX `fk_MedVeterinario_Funcionario_idx` (`Funcionario_idFuncionario`)
) ENGINE=InnoDB;

ALTER TABLE `MedVeterinario`
  ADD CONSTRAINT `fk_MedVeterinario_Funcionario`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Cuidador (herda de Funcionario)
CREATE TABLE IF NOT EXISTS `Cuidador` (
  `Funcionario_idFuncionario` INT UNSIGNED NOT NULL,
  `data_inicio_treinamento` DATE NOT NULL,
  PRIMARY KEY (`Funcionario_idFuncionario`),
  INDEX `fk_Cuidador_Funcionario_idx` (`Funcionario_idFuncionario`)
) ENGINE=InnoDB;

ALTER TABLE `Cuidador`
  ADD CONSTRAINT `fk_Cuidador_Funcionario`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Porte
CREATE TABLE IF NOT EXISTS `Porte` (
  `idPorte` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPorte`)
) ENGINE=InnoDB;

-- Periculosidade
CREATE TABLE IF NOT EXISTS `Periculosidade` (
  `idPericulosidade` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nivel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPericulosidade`)
) ENGINE=InnoDB;

-- Especie
CREATE TABLE IF NOT EXISTS `Especie` (
  `idEspecie` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_popular` VARCHAR(45) NOT NULL,
  `nome_cientifico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEspecie`)
) ENGINE=InnoDB;

-- Genero (atenção: aqui você fez Genero -> Especie; mantive como estava)
CREATE TABLE IF NOT EXISTS `Genero` (
  `idGenero` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Especie_idEspecie` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idGenero`),
  INDEX `fk_Genero_Especie_idx` (`Especie_idEspecie`)
) ENGINE=InnoDB;

ALTER TABLE `Genero`
  ADD CONSTRAINT `fk_Genero_Especie`
    FOREIGN KEY (`Especie_idEspecie`)
    REFERENCES `Especie` (`idEspecie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Familia (mantive Familia -> Genero conforme seu script)
CREATE TABLE IF NOT EXISTS `Familia` (
  `idFamilia` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Genero_idGenero` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idFamilia`),
  INDEX `fk_Familia_Genero_idx` (`Genero_idGenero`)
) ENGINE=InnoDB;

ALTER TABLE `Familia`
  ADD CONSTRAINT `fk_Familia_Genero`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Habitat (referencia Cuidador)
CREATE TABLE IF NOT EXISTS `Habitat` (
  `idHabitat` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `tamanho_m2` DECIMAL(10,2) UNSIGNED NOT NULL,
  `descricao` TEXT NOT NULL,
  `Cuidador_idCuidador` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idHabitat`),
  INDEX `fk_Habitat_Cuidador_idx` (`Cuidador_idCuidador`)
) ENGINE=InnoDB;

ALTER TABLE `Habitat`
  ADD CONSTRAINT `fk_Habitat_Cuidador`
    FOREIGN KEY (`Cuidador_idCuidador`)
    REFERENCES `Cuidador` (`Funcionario_idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Animal
CREATE TABLE IF NOT EXISTS `Animal` (
  `idAnimal` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `peso` DECIMAL(7,2) UNSIGNED NOT NULL,
  `altura` DECIMAL(4,2) UNSIGNED NOT NULL,
  `observacoes` TEXT NULL,
  `Especie_idEspecie` INT UNSIGNED NOT NULL,
  `Habitat_idHabitat` INT UNSIGNED NOT NULL,
  `Porte_idPorte` INT UNSIGNED NOT NULL,
  `Periculosidade_idPericulosidade` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idAnimal`),
  INDEX `fk_Animal_Especie_idx` (`Especie_idEspecie`),
  INDEX `fk_Animal_Habitat_idx` (`Habitat_idHabitat`),
  INDEX `fk_Animal_Porte_idx` (`Porte_idPorte`),
  INDEX `fk_Animal_Periculosidade_idx` (`Periculosidade_idPericulosidade`)
) ENGINE=InnoDB;

ALTER TABLE `Animal`
  ADD CONSTRAINT `fk_Animal_Especie`
    FOREIGN KEY (`Especie_idEspecie`)
    REFERENCES `Especie` (`idEspecie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Animal_Habitat`
    FOREIGN KEY (`Habitat_idHabitat`)
    REFERENCES `Habitat` (`idHabitat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Animal_Porte`
    FOREIGN KEY (`Porte_idPorte`)
    REFERENCES `Porte` (`idPorte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Animal_Periculosidade`
    FOREIGN KEY (`Periculosidade_idPericulosidade`)
    REFERENCES `Periculosidade` (`idPericulosidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Verificação de rotina
CREATE TABLE IF NOT EXISTS `VerificacaoRotina` (
  `idVerificacaoRotina` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_hora` DATETIME NOT NULL,
  `descricao` TEXT NOT NULL,
  `observacoes` TEXT NULL,
  `Habitat_idHabitat` INT UNSIGNED NOT NULL,
  `Biologo_Funcionario_idFuncionario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idVerificacaoRotina`),
  INDEX `fk_Verificacao_Habitat_idx` (`Habitat_idHabitat`),
  INDEX `fk_Verificacao_Biologo_idx` (`Biologo_Funcionario_idFuncionario`)
) ENGINE=InnoDB;

ALTER TABLE `VerificacaoRotina`
  ADD CONSTRAINT `fk_Verificacao_Habitat`
    FOREIGN KEY (`Habitat_idHabitat`)
    REFERENCES `Habitat` (`idHabitat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Verificacao_Biologo`
    FOREIGN KEY (`Biologo_Funcionario_idFuncionario`)
    REFERENCES `Biologo` (`Funcionario_idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- Atendimento Veterinário
CREATE TABLE IF NOT EXISTS `AtendimentoVeterinario` (
  `idAtendimentoVeterinario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_hora` DATETIME NOT NULL,
  `diagnostico` TEXT NOT NULL,
  `Tratamento` TEXT NULL,
  `Animal_idAnimal` INT(6) UNSIGNED NOT NULL,
  `MedVeterinario_crmv` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idAtendimentoVeterinario`),
  INDEX `fk_Atendimento_Animal_idx` (`Animal_idAnimal`),
  INDEX `fk_Atendimento_Med_idx` (`MedVeterinario_crmv`)
) ENGINE=InnoDB;

ALTER TABLE `AtendimentoVeterinario`
  ADD CONSTRAINT `fk_Atendimento_Animal`
    FOREIGN KEY (`Animal_idAnimal`)
    REFERENCES `Animal` (`idAnimal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Atendimento_Med`
    FOREIGN KEY (`MedVeterinario_crmv`)
    REFERENCES `MedVeterinario` (`crmv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE Genero
DROP FOREIGN KEY fk_Genero_Especie;

ALTER TABLE Familia
DROP FOREIGN KEY fk_Familia_Genero;

ALTER TABLE Genero
DROP COLUMN Especie_idEspecie;

ALTER TABLE Familia
DROP COLUMN Genero_idGenero;

ALTER TABLE Genero
ADD COLUMN Familia_idFamilia INT UNSIGNED NOT NULL;

ALTER TABLE Especie
ADD COLUMN Genero_idGenero INT UNSIGNED NOT NULL;

ALTER TABLE Genero
ADD CONSTRAINT fk_Genero_Familia
FOREIGN KEY (Familia_idFamilia)
REFERENCES Familia(idFamilia);

ALTER TABLE Especie
ADD CONSTRAINT fk_Especie_Genero
FOREIGN KEY (Genero_idGenero)
REFERENCES Genero(idGenero);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



