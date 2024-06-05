create database SPrint2;
use SPrint2;

    create table usuario(
	idUsuario int primary key auto_increment,
	nomeUsuario varchar(120) not null,
	email varchar(120) not null,
	cpf char(12) not null,
	senha varchar(8) not null,
    fkCadastroMuseu int not null,
	foreign key (fkCadastroMuseu)
   references museu(idMuseu)
	);
    
    SELECT * FROM usuario;
    
    create table museu(
    idMuseu int primary key auto_increment,
    nomeMuseu varchar(120) not null,
    cep char(8) not null,
    numero int,
    complemento varchar(50),
    cnpj char(14),
    qtdSecao varchar(50)
    );

    
select * from museu;

	
	create table secao(
	idSecao int primary key auto_increment,
	nomeSecao varchar(120),
	categoria varchar(120) not null,
	qtdobras varchar(50),
    fkMuseuSecao int, 
    constraint fkMuseuSecao foreign key (fkMuseuSecao)
   references museu(idMuseu)
	);
    
    create table sensor(
    idSensor int primary key auto_increment,
    fkSecao int,
    foreign key (fkSecao) references secao(idSecao)
    );
    
    create table registro(
    idRegistro int primary key auto_increment,
    umidade float,
    dtLogg datetime default current_timestamp,
    fkSensor int,
    foreign key (fkSensor) references sensor(idSensor)
    );
    
    select * from registro;
    select * from sensor;
	select * from secao;
	select * from museu;

insert into museu values  
(default, 'Masp', '01310200', 1578, null, '20123456789652', '2');

insert into secao values  
(default, 'Seção 1', 'Quadros', 20, 1);
    
insert into sensor values
     (default, 1);
     
select * from registro;
    
insert into usuario values
    (default, 'Lívia','livia@gmail.com','48955745632','1234',1);