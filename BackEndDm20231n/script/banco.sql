create database dm20231n;

create table dm20231n.usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));
  
create table dm20231n.pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  tipo VARCHAR(255),
  email VARCHAR(255),
  primary key (id));

create table dm20231n.logradouros (
  id BIGINT NOT NULL AUTO_INCREMENT,
  cep VARCHAR(255),
  numero VARCHAR(255),
  compl VARCHAR(255),
  primary key (id));

create table dm20231n.fatecs (
  id BIGINT NOT NULL AUTO_INCREMENT,
  cod VARCHAR(255),
  obs VARCHAR(255),
  primary key (id));

create table dm20231n.pessoas_logradouros (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idP BIGINT NOT NULL,
  idL BIGINT NOT NULL,
  obs VARCHAR(255),
  primary key (id));

create table dm20231n.usuarios_pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idU BIGINT NOT NULL,
  idP BIGINT NOT NULL,
  obs VARCHAR(255),
  primary key (id));

create table dm20231n.pessoas_fatecs (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idP BIGINT NOT NULL,
  idF BIGINT NOT NULL,
  obs VARCHAR(255),
  primary key (id));

create table dm20231n.animacao (
  id_animacao bigint(20) NOT NULL AUTO_INCREMENT,
  nome varchar(755) DEFAULT NULL,
  ano year(4) DEFAULT NULL,
  primary key(id_animacao)
);

CREATE TABLE dm20231n.sala (
  id_sala bigint(20) NOT NULL AUTO_INCREMENT,
  capacidade varchar(70) DEFAULT NULL,
  primary key(id_sala)
);

CREATE TABLE dm20231n.sessao (
  id_sessao bigint(20) NOT NULL AUTO_INCREMENT,
  id_sala bigint(20) NOT NULL,
  id_animacao bigint(20) NOT NULL,
  categoria varchar(50) DEFAULT NULL,
  primary key(id_sessao)
);

INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('BITTENCOURT', 'ABFABF010101', 'ATIVO', 'ADM');
INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('SCURACCHIO', 'ABFABF010101', 'ATIVO', 'VISITANTE');

ALTER TABLE dm20231n.usuarios_pessoas ADD CONSTRAINT FK_PES_USU_ID FOREIGN KEY (IDP) REFERENCES dm20231n.PESSOAS (ID);
ALTER TABLE dm20231n.usuarios_pessoas ADD CONSTRAINT FK_USU_PES_ID FOREIGN KEY (IDU) REFERENCES dm20231n.USUARIOS (ID);  

ALTER TABLE dm20231n.pessoas_logradouros ADD CONSTRAINT FK_PES_LOG_ID FOREIGN KEY (IDP) REFERENCES dm20231n.PESSOAS (ID);
ALTER TABLE dm20231n.pessoas_logradouros ADD CONSTRAINT FK_LOG_PES_ID FOREIGN KEY (IDL) REFERENCES dm20231n.LOGRADOUROS (ID);  

ALTER TABLE dm20231n.pessoas_fatecs ADD CONSTRAINT FK_PES_FAT_ID FOREIGN KEY (IDP) REFERENCES dm20231n.PESSOAS (ID);
ALTER TABLE dm20231n.pessoas_fatecs ADD CONSTRAINT FK_FAT_PES_ID FOREIGN KEY (IDF) REFERENCES dm20231n.FATECS (ID);  

ALTER TABLE dm20231n.sessao ADD CONSTRAINT FK_SESS_ANIMA FOREIGN KEY (id_animacao) REFERENCES dm20231n.animacao (id_animacao);
ALTER TABLE dm20231n.sessao ADD CONSTRAINT FK_SESS_SALA FOREIGN KEY (id_sala) REFERENCES dm20231n.sala (id_sala);
