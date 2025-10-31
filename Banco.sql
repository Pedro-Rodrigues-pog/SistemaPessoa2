create database cadastropessoa;
use cadastropessoa;

create table pessoa (
  cpf char (14) not null unique primary key,
  nome varchar (100) not null,
  contato char (11) not null,
  senha varchar (20) not null
);

create table agenda(
  cod int primary key auto_increment,
  cpf char (14) not null unique,
  descricao varchar (100) not null,
  data date not null,
  foreign key (cpf) references pessoa (cpf)
);