create database SPrint2;
use SPrint2;

    create table CadastroUsuario(
	idUsuario int primary key auto_increment,
	nomeUsuario varchar(120) not null,
	email varchar(120) not null,
	cpf char(12) not null,
	senha char(8) not null,
    fkCadastroMuseu int not null,
    constraint fkCadastroMuseuCadastroUsuario foreign key (fkCadastroMuseu)
   references CadastroUsuario(idUsuario)
	);
    
    create table CadastroMuseu(
    idMuseu int primary key auto_increment,
    nomeMuseu varchar(120) not null,
    cep char(8) not null,
    numero int,
    complemento varchar(50),
    cnpj char(14),
    qtdSecao varchar(50)
    );
    

	create table secao(
	idSecao int primary key auto_increment,
	numeroSecao varchar(3),
	nomeSecao varchar(120),
	categoria varchar(120) not null,
	qtdobras varchar(50),
    fkCadastroMuseu int, 
    constraint fkCadastroMuseuSecao foreign key (fkCadastroMuseu)
   references Secao(idsecao)
	);
    
    
    insert into CadastroUsuario values 
    (default, 'Pedro', 'pedro@gmail.com', '145782036547', '34751289', '1'),
    (default, 'Maria', 'maria@gmail.com', '673201459856', '97548621', '2'),
    (default, 'Flora', 'flora@gmail.com', '314257896547', '30142678', '3'),
    (default, 'Leticia', 'leticia@gmail.com', '657481239574', '01245789', '4');
    
    insert into CadastroMuseu values 
    (default, 'Museu de Zoologia da Universidade de São Paulo', '04263000', '154', '2', '63025530003391', '25'),
    (default, 'Museu Catavento', '03003060', '37', '1', '87657413947851', '14'),
    (default, 'Museu de Arte de São Paulo Assis Chateaubriand', '01310200', '1145', '2', '31240569874578', '64'),
    (default, 'Museu de Arte Contemporânea da Universidade de São Paulo', '04094050', '36', '1', '63254100421598', '85');
    
    insert into secao values 
    (default, '1', 'Ciência e Técnica', 'Ciência', '347', '1'),
    (default, '2', 'Etnográficos', 'Antropologia', '1148','2'),
    (default, '3', 'Arte', 'Artístico', '279', '3'),
    (default, '4', 'história natural.', 'História', '500', '4');
 


  

    
    